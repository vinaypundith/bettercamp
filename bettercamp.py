# Order of Operation:
# Step 00: have Autounattend.xml on the Windows installer USB run this script on Windows' first logon.
# Step 0: Detect the computer model and display a message if it isn't supportable (e.g Mac Pro 4.1 & 5.1, 2009-10 GeForce GT9400M/320M GPU equipped MacBooks and some MBPs, maybe more)
# Step 1: Unzip the Boot Camp driver package to a folder on the USB. Install 7 zip if necessary.
# Step 2: Check if the Boot Camp driver package download is version 4.0, and if so, check if the operating system is newer than Windows 7, and if so, set a compatibility registry key
# Step 3: Run the Boot Camp driver package installer
# Step 5: Apply the appropriate model specific patches:
# Step 6: Prompt user to reboot computer.

from subprocess import check_output
import os
import linecache
from platform import version
import urllib.request

osversionAsDecimal = float(version()[0:version().index('.',3)])
model = str(check_output("wmic csproduct get name", shell=True))
modelformatted =(model[(model.find(r'\r\r\n')+6):model.find(r'\r\r\n\r\r\n')]).strip()
print(modelformatted)
notSupportedModels = {"MacPro1,1", "MacPro2,1", "MacPro3,1", "MacPro4,1", "MacPro5,1", "iMac7,1", "iMac8,1", "MacBookAir1,1", "MacBookPro1,1", "MacBookPro2,1", "MacBookPro3,1","MacBookPro4,1", "MacBook1,1", "MacBook2,1", "MacBook3,1","MacBook4,1"}
hasGT9400M = {"MacBook5,1", "MacBook5,2", "MacBookAir2,1", "MacBookPro5,1", "MacBookPro5,2", "MacBookPro5,3", "MacBookPro5,4", "MacBookPro5,5", "MacBook6,1", "iMac9,1", "iMac10,1", "MacMini3,1"}
hasGT320M = {"MacBook7,1", "MacBookAir3,1", "MacBookAir3,2", "MacBookPro7,1", "MacMini4,1"}
is2011 = {"MacBookAir4,1", "MacBookAir4,2", "MacBookPro8,1", "MacBookPro8,2", "MacBookPro8,3", "iMac12,1", "iMac12,2", "MacMini5,1", "MacMini5,2", "MacMini5,3"}
hasGT9600M_that_I_dont_know_how_to_fix = {"MacBookPro5,1", "MacBookPro5,2", "MacBookPro5,3"}
is2012 = {}


if modelformatted not in notSupportedModels:
    if modelformatted in hasGT9400M:
        os.system(f'mkdir C:\\bootloadermount') # creates a mount point for the windows bootloader partition that is about to be made
        os.system(f'diskpart /s {os.getcwd()}\createbootloader.txt') # creates a 1MB partition to hold the new Windows bootloader
        os.system(f'mkdir C:\\bootloadermount\EFI\Boot')
        os.system(f'copy {os.getcwd()}\startup.nsh C:\\bootloadermount\EFI\Boot\startup.nsh')
        os.system(f'copy {os.getcwd()}\Shell_Full.efi C:\\bootloadermount\\EFI\Boot\\BOOTx64.efi')
        os.system(f'copy {os.getcwd()}\.VolumeIcons_Windows.icns C:\\bootloadermount\\.VolumeIcons.icns')
    
    if modelformatted in hasGT320M:
        os.system('start msedge https://www.youtube.com/watch?v=dQw4w9WgXcQ')

    if "4.0" in linecache.getline('BootCamp.xml', 7) and osversionAsDecimal > 6.1:
        os.system(f'cmd /k "reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "{os.getcwd()}\BootCamp\setup.exe" /t REG_SZ /d WIN7RTM /f "')
        os.system(f'start /wait {os.getcwd()}\BootCamp\setup.exe')
        print("Starting the Apple driver pack installer. Please follow the prompts on the screen to start it. DO NOT REBOOT THE COMPUTER after it finishes! Click 'No, I don't want to restart now' and then the Finish button.")
        if osversionAsDecimal >= 10.0:
            os.system(f'{os.getcwd}\AppleHAL\dpinst.exe')
    else:
        os.system(f'start {os.getcwd()}\BootCamp\setup.exe')

    if modelformatted in hasGT9400M:
        print('Please connect your computer to the internet and press Enter to proceed.')
        urllib.request.urlretrieve('https://us.download.nvidia.com/Windows/342.01/342.01-notebook-win10-64bit-international.exe', f'{os.getcwd()}\driverdownload\\nvidia.exe')
        os.system(f'start {os.getcwd}\driverdownload\\nvidia.exe') #update nvidia driver to version 342.01 from nV website, else windows update installs 341.74 which causes the machine to hang while windows is booting up

    if modelformatted in is2011 or modelformatted in is2012:
        print("Adding the patch to enable Audio output")
        os.system('mountvol B: /S') #need to make this check for available drive letters; else will fail if B drive is taken by 5.25" floppy drive or something
        if os.path.exists("B:\EFI\OC"):
            if os.path.exists("B:\EFI\OC\ACPI\SSDT-PCI.aml"):
                print("Audio enabler patch already installed using OpenCore.")
            else:
                print("OpenCore installation detected. You can choose to either proceed with installing the audio patch automatically here, which will disable driver signature verification (a slight security reduction), or use OpenCore to add the patch without having to touch Windows' driver configuration. ")
                print("Enter Y to proceed with patch installation directly into Windows or N if you would like to install it yourself using OpenCore. Instructions for using OpenCore [will insert link here]")
                choice = str(input("Your Choice: "))
                if choice == 'y' or choice == 'Y': # yes this will throw up if the user enters a different letter; it doesn't matter since in the final app this will be replaced by graphical buttons
                    os.system("bcdedit.exe -set TESTSIGNING ON")
                    os.system(f'start {os.getcwd}\\Audio_2011_2012\\asl.x64 /loadtable -v DSDT.AML')
                else:
                    print("Skipping Audio Patch - Please add it to OpenCore manually")
        else:
            os.system("bcdedit.exe -set TESTSIGNING ON")
            os.system(f'start {os.getcwd}\\Audio_2011_2012\\asl.x64 /loadtable -v DSDT.AML')
        
    
else:
    print("Sorry, but this model computer is not supported for running Windows in EFI booting mode. You may still be able to run Windows in standard legacy BIOS mode using Apple's Boot Camp tool.")

#os.popen
#os.uname

