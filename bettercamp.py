# Order of Operation:
# Step 00: have Autounattend.xml on the Windows installer USB run this script on Windows' first logon.
# Step 0: Detect the computer model and display a message if it isn't supportable.
# Step 1: Unzip the Boot Camp driver package to a folder on the USB. Install 7-Zip if necessary.
# Step 2: Check if the Boot Camp driver package is version 4.0, and if so,
#         if the operating system is newer than Windows 7, set a compatibility layer.
# Step 3: Run the Boot Camp driver package installer.
# Step 5: Apply model-specific patches.
# Step 6: Prompt user to reboot computer.

import os
import re
import sys
import urllib.request
import subprocess
import xml.etree.ElementTree as ET
from pathlib import Path


BASE = Path.cwd()


# -----------------------------
# Model groups
# -----------------------------

EFInotSupportedModels = {
    "MacPro1,1", "MacPro2,1", "MacPro3,1", "MacPro4,1", "MacPro5,1",
    "iMac7,1", "iMac8,1",
    "MacBookAir1,1",
    "MacBookPro1,1", "MacBookPro2,1", "MacBookPro3,1", "MacBookPro4,1",
    "MacBook1,1", "MacBook2,1", "MacBook3,1", "MacBook4,1"
}

hasGT9400M = {
    "MacBook5,1", "MacBook5,2",
    "MacBookAir2,1",
    "MacBookPro5,1", "MacBookPro5,2", "MacBookPro5,3", "MacBookPro5,4", "MacBookPro5,5",
    "MacBook6,1",
    "iMac9,1", "iMac10,1",
    "MacMini3,1"
}

hasGT320M = {
    "MacBook7,1",
    "MacBookAir3,1", "MacBookAir3,2",
    "MacBookPro7,1",
    "MacMini4,1"
}

is2011 = {
    "MacBookAir4,1", "MacBookAir4,2",
    "MacBookPro8,1", "MacBookPro8,2", "MacBookPro8,3",
    "iMac12,1", "iMac12,2",
    "MacMini5,1", "MacMini5,2", "MacMini5,3"
}

hasGT9600M_that_I_dont_know_how_to_fix = {
    "MacBookPro5,1", "MacBookPro5,2", "MacBookPro5,3"
}

# Fixed missing comma between MacBook5,2 and MacBook5,1
A1181x64 = {
    "MacBook2,1", "MacBook3,1", "MacBook4,1", "MacBook5,2", "MacBook5,1"
}

is2012 = {
    "iMac13,1", "iMac13,2",
    "MacBookAir5,1", "MacBookAir5,2",
    "MacBookPro9,1", "MacBookPro9,2",
    "MacBookPro10,1", "MacBookPro10,2",
    "MacMini6,1", "MacMini6,2"
}


# -----------------------------
# Utility functions
# -----------------------------

def run_cmd(command, wait=True):
    """
    Run a Windows shell command.
    """
    print(f"Running: {command}")
    return subprocess.run(command, shell=True, check=False)


def quote_path(path):
    """
    Quote a path for use in shell commands.
    """
    return f'"{str(path)}"'


def get_windows_version_tuple():
    """
    Returns Windows version as a tuple:
    Example: Windows 10/11 usually reports as (10, 0, build)
    """
    winver = sys.getwindowsversion()
    return winver.major, winver.minor, winver.build


def windows_version_is_newer_than_7():
    """
    Windows 7 is NT 6.1.
    Windows 8 is 6.2.
    Windows 8.1 is 6.3.
    Windows 10/11 is normally 10.0.
    """
    major, minor, _build = get_windows_version_tuple()
    return (major, minor) > (6, 1)


def windows_version_is_10_or_newer():
    major, minor, _build = get_windows_version_tuple()
    return (major, minor) >= (10, 0)


def parse_version_tuple(version_text):
    """
    Converts:
        '4.0' -> (4, 0)
        '5.1.5621' -> (5, 1, 5621)
    """
    nums = re.findall(r"\d+", version_text)

    if not nums:
        raise ValueError(f"No numeric version found in version string: {version_text!r}")

    return tuple(int(n) for n in nums)


def normalize_version_tuple(version_tuple, length):
    return version_tuple + (0,) * (length - len(version_tuple))


def version_lte(a, b):
    length = max(len(a), len(b))
    return normalize_version_tuple(a, length) <= normalize_version_tuple(b, length)


def version_gte(a, b):
    length = max(len(a), len(b))
    return normalize_version_tuple(a, length) >= normalize_version_tuple(b, length)


def get_model():
    """
    Get Mac model identifier from Windows.
    Uses PowerShell CIM first, then falls back to WMIC.
    """
    try:
        output = subprocess.check_output(
            [
                "powershell",
                "-NoProfile",
                "-ExecutionPolicy",
                "Bypass",
                "-Command",
                "(Get-CimInstance Win32_ComputerSystemProduct).Name"
            ],
            text=True,
            stderr=subprocess.DEVNULL
        )

        model = output.strip()

        if model:
            return model

    except Exception:
        pass

    try:
        output = subprocess.check_output(
            "wmic csproduct get name",
            shell=True,
            text=True,
            stderr=subprocess.DEVNULL
        )

        lines = [line.strip() for line in output.splitlines() if line.strip()]

        if len(lines) >= 2:
            return lines[1]

    except Exception:
        pass

    return ""


def get_bootcamp_version():
    """
    Read BootCamp.xml and return the ProductVersion as a tuple.
    Example:
        5.1.5621 -> (5, 1, 5621)
    """
    xml_path = BASE / "BootCamp" / "BootCamp.xml"

    if not xml_path.exists():
        raise FileNotFoundError(f"Could not find BootCamp.xml at: {xml_path}")

    text = xml_path.read_text(errors="ignore")

    # First try a simple regex. This handles most BootCamp.xml files.
    match = re.search(
        r"<ProductVersion>\s*([^<]+)\s*</ProductVersion>",
        text,
        re.IGNORECASE
    )

    if match:
        version_text = match.group(1).strip()
        print(f"Boot Camp version detected: {version_text}")
        return parse_version_tuple(version_text)

    # XML parser fallback.
    try:
        root = ET.fromstring(text)

        for elem in root.iter():
            tag_name = elem.tag.lower()

            if tag_name.endswith("productversion") and elem.text:
                version_text = elem.text.strip()
                print(f"Boot Camp version detected: {version_text}")
                return parse_version_tuple(version_text)

    except ET.ParseError as exc:
        raise ValueError(f"Could not parse BootCamp.xml: {exc}") from exc

    raise ValueError("Could not find ProductVersion in BootCamp.xml")


# -----------------------------
# Boot mode
# -----------------------------

def find_boot_mode():
    """
    Detect whether Windows is booted in Legacy BIOS mode or EFI mode.
    """
    try:
        bootloader = os.popen('bcdedit | find "path"').read().lower()

        if "winload.exe" in bootloader:
            return "Legacy"

        if "winload.efi" in bootloader:
            return "EFI"

    except Exception:
        pass

    return "Unknown"


# -----------------------------
# Boot Camp installer
# -----------------------------

def run_boot_camp_installer():
    bcversion = get_bootcamp_version()

    if modelformatted in A1181x64:
        toexecute = BASE / "BootCamp" / "Drivers" / "Apple" / "BootCamp64.msi"
    else:
        toexecute = BASE / "BootCamp" / "setup.exe"

    if not toexecute.exists():
        print(f"Boot Camp installer was not found: {toexecute}")
        return

    print()
    print("Starting the Apple driver pack installer.")
    print("Follow the prompts on the screen.")
    print("DO NOT REBOOT THE COMPUTER after it finishes.")
    print("Click 'No, I don't want to restart now' and then Finish.")
    print()

    if version_lte(bcversion, (4, 0)) and windows_version_is_newer_than_7():
        command = f'set "__COMPAT_LAYER=WIN7RTM" && start /wait "" {quote_path(toexecute)}'
    else:
        command = f'start /wait "" {quote_path(toexecute)}'

    run_cmd(command)

    if version_lte(bcversion, (5, 1)) and windows_version_is_10_or_newer():
        apple_hal_installer = BASE / "AppleHAL" / "dpinst.exe"

        if apple_hal_installer.exists():
            print("Installing AppleHAL driver.")
            run_cmd(f'start /wait "" {quote_path(apple_hal_installer)}')
        else:
            print(f"AppleHAL installer not found, skipping: {apple_hal_installer}")


# -----------------------------
# 2011/2012 EFI audio patch
# -----------------------------

def fix_efi_audio_2011_2012():
    if modelformatted in is2011:
        dsdt_file = "dsdt_2011.aml"
    elif modelformatted in is2012:
        dsdt_file = "dsdt_2012.aml"
    else:
        print("This model does not use the 2011/2012 EFI audio patch.")
        return

    audio_patch_dir = BASE / "Audio_2011_2012"
    asl_path = audio_patch_dir / "asl.exe"
    dsdt_path = audio_patch_dir / dsdt_file

    if not asl_path.exists():
        print(f"asl.exe not found, skipping audio patch: {asl_path}")
        return

    if not dsdt_path.exists():
        print(f"DSDT file not found, skipping audio patch: {dsdt_path}")
        return

    print("Adding the patch to enable audio output.")

    run_cmd("mountvol B: /S")

    open_core_path = Path(r"B:\EFI\OC")
    open_core_ssdt = Path(r"B:\EFI\OC\ACPI\SSDT-PCI.aml")

    if open_core_path.exists():
        if open_core_ssdt.exists():
            print("Audio enabler patch already appears to be installed using OpenCore.")
        else:
            print("OpenCore installation detected.")
            print("You can either install the audio patch directly into Windows,")
            print("which enables TESTSIGNING, or skip and add it manually to OpenCore.")
            print()

            choice = input("Enter Y to install into Windows, or N to skip: ").strip().lower()

            if choice == "y":
                run_cmd("bcdedit.exe -set TESTSIGNING ON")
                run_cmd(f'start /wait "" {quote_path(asl_path)} /loadtable -v {quote_path(dsdt_path)}')
            else:
                print("Skipping audio patch. Please add it to OpenCore manually.")
    else:
        print("Installing audio patch directly into Windows.")
        run_cmd("bcdedit.exe -set TESTSIGNING ON")
        run_cmd(f'start /wait "" {quote_path(asl_path)} /loadtable -v {quote_path(dsdt_path)}')

    if modelformatted in is2011:
        display_audio_inf = audio_patch_dir / "DisplayAudioDriver" / "IntcDAud.inf"

        if display_audio_inf.exists():
            print("Installing Intel HD 3000 Display Audio driver.")
            run_cmd(f'start /wait "" pnputil /add-driver {quote_path(display_audio_inf)} /install')
        else:
            print(f"Display Audio driver INF not found, skipping: {display_audio_inf}")


# -----------------------------
# GPU driver updater
# -----------------------------

def update_graphics_drivers():
    link = ""

    if modelformatted in is2012:
        link = "https://downloadmirror.intel.com/29969/a08/win64_15.33.53.5161.exe"
    elif modelformatted in hasGT9400M or modelformatted in hasGT320M:
        link = "https://us.download.nvidia.com/Windows/342.01/342.01-notebook-win10-64bit-international.exe"

    if not link:
        print("No known updated graphics driver download for this model. Skipping GPU driver update.")
        return

    download_dir = BASE / "driverdownload"
    download_dir.mkdir(exist_ok=True)

    driver_path = download_dir / "gpudriver.exe"

    print("Downloading updated graphics driver.")
    print(link)

    try:
        urllib.request.urlretrieve(link, driver_path)
    except Exception as exc:
        print(f"GPU driver download failed: {exc}")
        return

    if driver_path.exists():
        print("Starting graphics driver installer.")
        run_cmd(f'start /wait "" {quote_path(driver_path)}')
    else:
        print("GPU driver download did not create the expected file.")


# -----------------------------
# Main
# -----------------------------

def main():
    global modelformatted

    modelformatted = get_model()

    if not modelformatted:
        print("Could not detect computer model.")
        print("Continuing, but model-specific patches may not run.")
    else:
        print(f"Detected model: {modelformatted}")

    major, minor, build = get_windows_version_tuple()
    print(f"Detected Windows version: {major}.{minor}.{build}")

    boot_mode = find_boot_mode()
    print(f"{boot_mode} boot mode detected")

    print()

    if modelformatted in EFInotSupportedModels:
        print("This model is listed as unsupported for EFI Windows booting.")
        print("You may still be able to run Windows in Legacy BIOS mode using Boot Camp.")
        print()

    if boot_mode == "EFI":
        if modelformatted in hasGT9400M:
            print("Installing chainloader to patch nVidia graphics driver bootloop/blank screen in EFI mode.")

            fix_script = BASE / "fix9400M_EFI" / "fix9400M_EFI.bat"

            if fix_script.exists():
                run_cmd(quote_path(fix_script))
            else:
                print(f"9400M EFI fix script not found: {fix_script}")

        if modelformatted in hasGT320M:
            print("This model has an nVidia GT 320M.")
            print("EFI booting with this GPU may be problematic.")
            print("Skipping automatic GT 320M EFI patch because no real patch command is configured.")
            print()

        if modelformatted in is2011 or modelformatted in is2012:
            fix_efi_audio_2011_2012()

    elif boot_mode == "Legacy":
        print("Legacy boot mode detected. EFI-specific patches will be skipped.")
    else:
        print("Could not determine boot mode. EFI-specific patches will be skipped.")

    print()
    run_boot_camp_installer()

    print()
    input("Please connect your computer to the internet and press Enter to proceed with graphics driver updates.")

    update_graphics_drivers()

    print()
    print("Finished.")
    print("Please reboot the computer after all installers and patches have completed.")


if __name__ == "__main__":
    main()