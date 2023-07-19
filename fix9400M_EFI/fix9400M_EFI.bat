set scriptpath=%~dp0
%scriptpath%setpci -s "00:10.0" 3e.b=8
%scriptpath%setpci -s "02:00.0" 04.b=7
mkdir C:\bootloadermount
start /wait diskpart /s %scriptpath%\createbootloader.txt
mkdir C:\bootloadermount\EFI\Boot
copy %scriptpath%\startup.nsh C:\bootloadermount\EFI\Boot\startup.nsh
copy %scriptpath%\Shell_Full.efi C:\bootloadermount\EFI\Boot\BOOTx64.efi
copy %scriptpath%\.VolumeIcon_Windows.icns C:\bootloadermount\.VolumeIcon.icns
