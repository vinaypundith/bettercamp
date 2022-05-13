# bettercamp - 
A super simple script to automate hardware drivers setup for Microsoft Windows on older Apple Macintosh computers

Note: Seems like the copy of IntcHDAud.inf Intel audio driver uploaded here is corrupt, use a different copy (extract any OEM, like Dell's, Intel HD Graphics driver and use the audio inf file from its extracted folder)

What this tool does:

February 20, 2022 - Very first upload of at least functional code! Please note - this means that there are almost certainly bugs or cases that'll make it not work. As long as this message is here, consider yourself as beta testing and don't kill me if your computer is sent into a bootloop. That being said, there is a good chance it'll work.

How to use this tool:
- Download all files from this repository, and put them in a folder on a USB drive (adding a folder on the same drive used for the Windows installer will also work)
- Download the proper Boot Camp driver pack for your model Mac computer, extract it, and put the BootCamp folder (must be named exactly that) inside the folder created in the previous step. Brigadier is one tool that can be used to download the driver pack, if Boot Camp Assistant refuses to or downloads the wrong one
- If installing Windows 11 using a USB drive, add Autounattend.xml from this repository to the root of the USB drive
- Go through the Windows installation procedure as normal. If you have a Mac computer with an nVidia GeForce 9400M graphics card and are installing Windows in EFI mode, do NOT connect to the Internet during Windows setup
- Once Windows is installed, install Python 3
- Launch Python's IDLE as Administrator (must run as admin)
- in IDLE, go to Open and open bettercamp.py
- run it (from the top menu)

Yes, that process is a mess. I'll work on making it easier

Fixes that this tool currently implements:
- Patching blank screen on bootup caused by nVidia Graphics Drivers on 2009 year model 13" MacBook and MacBook Pro laptops when Windows 7/8/8.1/10/11 is installed in EFI mode, using a chainloader that sets the proper PCI register values
- Patching lack of audio on 2011 year model Mac computers when Windows is installed in EFI mode, using a DSDT modification. Nope I don't know how that works - someone else made it and I just wrote code to run it
- Patching blue screen of death crash in Windows 11 caused by MacHALDriver.sys driver from Apple's Boot Camp Driver Pack version 4.0 - by replacing MacHALDriver with a newer version
- Automatically downloading and starting installer of the latest nVidia graphics driver for the GeForce 8600M, 9400M, 9600M, 320M and 330M graphics cards (to update the version included in Apple's driver pack, which causes issues in later Windows 10 versions and Windows 11)
- Automatically run the Boot Camp driver pack setup.exe file with compatibility mode set when necessary, to avoid the version 4.0 driver pack installer saying "Boot Camp requires that your computer is running Windows 7"
- For the A1181 MacBook models (2007 through Early 2009 13" white model), it instead runs BootCamp64.msi in the Drivers\Apple folder of the Boot Camp driver pack instead of the normal setup.exe, since setup.exe crashes saying "Boot Camp x64 is not supported on this model"

Tested hardware/software combinations:
- iMac10.1 (Late 2009, Core 2 Duo 27" iMac) with Windows 11 build 22000.132 in EFI mode
- MacBook Pro 5.5 (Mid 2009, Core 2 Duo 13" MacBook Pro) with Windows 10 build 20H2 and Windows 11 build 22000.194 and .348 in EFI mode
- MacBook 5.2 (Early 2009, Core 2 Duo 13" Polycarbonate MacBook) with Windows 11 build 22000.194 and 22000.493 in EFI mode
- MacBookPro 8.1 (Early 2011 13" Core i5/i7 Aluminum Unibody model) with Windows 11 build 22000.493 and 22563.1 in EFI mode (I've made some changes to how the audio patch installs since testing this - it should still work, but not tested. Method only tested with 2012 model)
- MacBookPro 9.2 (Mid 2012 13" Core i5/i7 non-Retina Aluminum Unibody model - thanks Apple for that mile long name) in EFI booting mode with Windows 11 build 22000.194
- MacBook 4.1 (Early 2008, Core 2 Duo 13" Polycarbonate MacBook) with Windows 11 build 22000.194 and 22000.493 in legacy BIOS boot mode

Planned additions:
- Fix the models list and grouping! It's currently a mess.
- Make simple runnable package that doesn't need Python installed
- Add audio fix for 2012 year models
- Test and tweak accordingly for GeForce 9600M and 330M equipped 15 and 17" MacBook Pro laptops
- Add PCI register values for iMac9.1 and other GeForce 9400M equipped models to graphics driver blank screen fix
- Possibly rewrite the tool in C++ instead of Python?
- Add support for MacBook Pro 2006-2008 and MacBook A1181 2006-2007 models
- Add Windows 7 support - bootloader tweaks

If any of you reading this can help with any of those, please message me!

Credits:
- Ava @8itCat - co-dev, brainstorming head and tester in the beginning
- Andrew Howe @Howeitworks[.com] - Original idea for the tool, author of a similar tool that this one is structured based on, and source of the MacHALDriver.sys replacement
- @TGIK for the 2011 Mac audio fix
- @CyberDroid1 for the 2012 Mac audio fix
- Whoever first came up with the nVidia driver fix with the PCI register values - there's so many posts online, I have no clue who came up with it
- Mykola G. @Khronokernel - Crucial tidbits of Mac hardware and software knowledge along the way
- Dhinak G. @DhinakG - I'd have probably gone crazy trying to get the PCI register tweaking chainloader to work without him fixing the command syntax
