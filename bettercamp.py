# Order of Operation:
# Step 00: have Autounattend.xml on the Windows installer USB run this script on Windows' first logon.
# Step 0: Detect the computer model and display a message if it isn't supportable (e.g Mac Pro 4.1 & 5.1, 2010 GeForce 320M GPU equipped MacBooks and some MBPs, maybe more)
# Step 1: Unzip the Boot Camp driver package to a folder on the USB. Install 7 zip if necessary.
# Step 2: Check if the Boot Camp driver package download is version 4.0, and if so, check if the operating system is newer than Windows 7, and if so, set a compatibility registry key
# Step 3: Run the Boot Camp driver package installer
# Step 5: Apply the appropriate model specific patches:
# Step 6: Prompt user to reboot computer.

import subprocess
import linecache
from platform import version
import urllib.request
import os

osversionAsDecimal = float(version()[0:version().index('.',3)])
model = str(subprocess.check_output("wmic csproduct get name", shell=True))
modelformatted = (model[(model.find(r'\r\r\n')+6):model.find(r'\r\r\n\r\r\n')]).strip()
print(modelformatted)
EFInotSupportedModels = {"MacPro1,1", "MacPro2,1", "MacPro3,1", "MacPro4,1", "MacPro5,1", "iMac7,1", "iMac8,1", "MacBookAir1,1", "MacBookPro1,1", "MacBookPro2,1", "MacBookPro3,1","MacBookPro4,1", "MacBook1,1", "MacBook2,1", "MacBook3,1","MacBook4,1"}
hasGT9400M = {"MacBook5,1", "MacBook5,2", "MacBookAir2,1", "MacBookPro5,1", "MacBookPro5,2", "MacBookPro5,3", "MacBookPro5,4", "MacBookPro5,5", "MacBook6,1", "iMac9,1", "iMac10,1", "MacMini3,1"}
hasGT320M = {"MacBook7,1", "MacBookAir3,1", "MacBookAir3,2", "MacBookPro7,1", "MacMini4,1"}
is2011 = {"MacBookAir4,1", "MacBookAir4,2", "MacBookPro8,1", "MacBookPro8,2", "MacBookPro8,3", "iMac12,1", "iMac12,2", "MacMini5,1", "MacMini5,2", "MacMini5,3"}
hasGT9600M_that_I_dont_know_how_to_fix = {"MacBookPro5,1", "MacBookPro5,2", "MacBookPro5,3"}
A1181x64 = {"MacBook2,1", "MacBook3,1", "MacBook4,1", "MacBook5,2"}
is2012 = {"iMac13,1", "iMac13,2", "MacBookAir4,2", "MacBookAir5,1", "MacBookAir5,2", "MacBookPro9,2", "MacBookPro9,1", "MacBookPro10,1", "MacBookPro10,2", "MacMini6,1", "MacMini6,2"}

def find_boot_mode():
    result = ""
    bootloader = str(os.popen('bcdedit | find "path"').read())
    if "winload.exe" in bootloader:
        result = "Legacy"
    elif "winload.efi" in bootloader:
        result = "EFI"
    return result

def run_boot_camp_installer():
    bcversionstring = linecache.getline(f'{os.getcwd()}\\BootCamp\\BootCamp.xml', 7)
    bcversion = float(bcversionstring[bcversionstring.find('<ProductVersion>')+16:bcversionstring.find('<ProductVersion>')+19])
    if modelformatted in A1181x64:
        toexecute = '\Drivers\\Apple\\BootCamp64.msi'
    else:
        toexecute = 'setup.exe'
        subprocess.run(f'{os.getcwd()}\\BootCamp\\Drivers\\Apple\BootCamp64.msi', shell=True)
    if bcversion <=4.0 and osversionAsDecimal > 6.1:
        subprocess.run(f'set __COMPAT_LAYER=WIN7RTM && start /wait {os.getcwd()}\BootCamp\{toexecute}', shell=True)
    else:
        subprocess.run(f'start {os.getcwd()}\BootCamp\{toexecute}', shell=True)
    print("Starting the Apple driver pack installer. Please follow the prompts on the screen to start it. DO NOT REBOOT THE COMPUTER after it finishes! Click 'No, I don't want to restart now' and then the Finish button.")
    if bcversion <=5.1 and osversionAsDecimal >= 10.0:
            subprocess.run(f'{os.getcwd()}\\AppleHAL\\dpinst.exe', shell=True)

def fix_efi_audio_2011_2012():
    thefile = ""
    if modelformatted in is2011:
        thefile="dsdt_2011.aml"
    elif modelformatted in is2012:
        thefile= "dsdt_2012.aml"

    print("Adding the patch to enable Audio output")
    subprocess.run('mountvol B: /S', shell=True) #need to make this check for available drive letters; else will fail if B drive is taken by 5.25" floppy drive or something
    if os.path.exists("B:\EFI\OC"):
        if os.path.exists("B:\EFI\OC\ACPI\SSDT-PCI.aml"):
            print("Audio enabler patch already installed using OpenCore.")
        else:
            print("OpenCore installation detected. You can choose to either proceed with installing the audio patch automatically here, which will disable driver signature verification (a slight security reduction), or use OpenCore to add the patch without having to touch Windows' driver configuration. ")
            print("Enter Y to proceed with patch installation directly into Windows or N if you would like to install it yourself using OpenCore. Instructions for using OpenCore [will insert link here]")
            choice = str(input("Your Choice: "))
            if choice == 'y' or choice == 'Y': # yes this will throw up if the user enters a different letter; it doesn't matter since in the final app this will be replaced by graphical buttons
                subprocess.run("bcdedit.exe -set TESTSIGNING ON", shell=True)
                subprocess.run(f'start {os.getcwd()}\\Audio_2011_2012\\asl.exe /loadtable -v {os.getcwd()}\\Audio_2011_2012\\{thefile}', shell=True)
            else:
                print("Skipping Audio Patch - Please add it to OpenCore manually")
    else:
        print("Installing Audio Patch")
        subprocess.run("bcdedit.exe -set TESTSIGNING ON", shell=True)
        subprocess.run(f'start {os.getcwd()}\\Audio_2011_2012\\asl.exe /loadtable -v {os.getcwd()}\\Audio_2011_2012\\{thefile}', shell=True)

    if modelformatted in is2011:
        print("Installing Intel (HD 3000 iGPU) Display Audio Driver")
        subprocess.run(f'start pnputil /add-driver {os.getcwd()}\\Audio_2011_2012\\DisplayAudioDriver\\IntcDAud.inf /install', shell=True)

def update_graphics_drivers():
    link = ""
    if modelformatted in is2012:
        link = "https://downloadmirror.intel.com/29969/a08/win64_15.33.53.5161.exe"
    elif modelformatted in hasGT9400M or modelformatted in hasGT320M:
        link = "https://us.download.nvidia.com/Windows/342.01/342.01-notebook-win10-64bit-international.exe"
    print("Downloading updated graphics driver")
    subprocess.run(f'mkdir {os.getcwd()}\driverdownload', shell=True)
    urllib.request.urlretrieve(link, f'{os.getcwd()}\driverdownload\\gpudriver.exe')
    subprocess.run(f'start /wait {os.getcwd()}\driverdownload\\gpudriver.exe', shell=True) 
boot_mode = find_boot_mode()

print(f'{boot_mode} boot mode detected')

if modelformatted not in EFInotSupportedModels and modelformatted not in hasGT320M:
    if boot_mode == "EFI":
        if modelformatted in hasGT9400M:
            print("Installing Chainloader to patch nVidia graphics driver bootloop/blank screen when booting in EFI mode")
            subprocess.run(f'{os.getcwd()}\\fix9400M_EFI\\fix9400M_EFI.bat', shell=True)

        if modelformatted in hasGT320M:
            os.system('start msedge https://www.youtube.com/watch?v=dQw4w9WgXcQ')

        if modelformatted in is2011 or modelformatted in is2012:
            fix_efi_audio_2011_2012()

run_boot_camp_installer()

input('Please connect your computer to the internet and press Enter to proceed.')
update_graphics_drivers()  
    
    
    



#else:
    #print("Sorry, but this model computer is not supported for running Windows in EFI booting mode. You may still be able to run Windows in standard legacy BIOS mode using Apple's Boot Camp tool.")

#os.popen
#os.uname

