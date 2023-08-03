import os
import subprocess

osversionAsDecimal = float(version()[0:version().index('.',3)])
model = str(subprocess.check_output("wmic csproduct get name", shell=True)) # must find a different way to do this. The wmic command no longer works in Windows 11 Insider builds and Windows Server 2022 vNext
modelformatted = (model[(model.find(r'\r\r\n')+6):model.find(r'\r\r\n\r\r\n')]).strip()

def find_boot_mode():
    result = ""
    bootloader = str(os.popen('bcdedit | find "path"').read())
    if "winload.exe" in bootloader:
        result = "Legacy"
    elif "winload.efi" in bootloader:
        result = "EFI"
    return result

def run_boot_camp_installer(modelformatted):
    print("1) Specify folder path to Boot Camp Driver Pack installer")
    print("2) Download Boot Camp Driver Pack from the internet")
    choice = str(input("Enter a choice: "))
    if choice == "1":
        found = False
        while not found:
            path = str(input("Path: (e.g D:\\folder\\BootCamp) :"))
            if os.path.exists(f'{path}\\BootCamp.xml'):
                found = True
                bcversionstring = linecache.getline(f'{path}\\BootCamp\\BootCamp.xml', 7)
                bcversion = float(bcversionstring[bcversionstring.find('<ProductVersion>')+16:bcversionstring.find('<ProductVersion>')+19])
                print(f'Found Boot Camp Driver Pack version {bcversion}')
                print("Starting the Apple driver pack installer. Please follow the prompts on the screen to start it. DO NOT REBOOT THE COMPUTER after it finishes! Click 'No, I don't want to restart now' and then the Finish button.")
                if modelformatted in A1181x64:
                    subprocess.run(f'{path}\\BootCamp\\Drivers\\Apple\BootCamp64.msi', shell=True)
                else:
                    if bcversion <=4.0 and osversionAsDecimal > 6.1:
                        subprocess.run(f'set __COMPAT_LAYER=WIN7RTM && start /wait {path}\BootCamp\setup.exe', shell=True)
                    else:
                        subprocess.run(f'start {path}\BootCamp\setup.exe', shell=True)
                if bcversion <=5.1 and osversionAsDecimal >= 10.0:
                    subprocess.run(f'{os.getcwd()}\\AppleHAL\\dpinst.exe', shell=True)
            else:
                print("Boot Camp Installer not found at this location. Please make sure it is actually at the path you specified, or enter a different path")
        
bootmode = find_boot_mode()
print("Welcome to bettercamp")
print(f'Model Detected: {modelformatted}')
print(f'Windows (NT Kernel) Version Detected: {osVersionAsDecimal}')
print(f'Boot Mode Detected: {bootmode}')

