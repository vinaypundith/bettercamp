%CD%\setpci -s "00:10.0" 3e.b=8
%CD%\setpci -s "02:00.0" 04.b=7
mkdir C:\bootloadermount
start /wait diskpart /s %CD%\fix9400M_EFI\createbootloader.txt
mkdir C:\bootloadermount\EFI\Boot
copy %CD%\fix9400M_EFI\startup.nsh C:\bootloadermount\EFI\Boot\startup.nsh
copy %CD%\fix9400M_EFI\Shell_Full.efi C:\bootloadermount\EFI\Boot\BOOTx64.efi
copy %CD%\fix9400M_EFI\.VolumeIcon_Windows.icns C:\bootloadermount\.VolumeIcon.icns
