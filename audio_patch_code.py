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