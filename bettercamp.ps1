$bcpath = 'C:\Users\Vinay\Downloads\BootCamp-041-84868'
$model = Get-CimInstance -ClassName Win32_ComputerSystem | Select-Object -Property Model
$graphics = Get-PnpDevice -Class 'Display' | Select-Object -Property InstanceID
$osbuild_str = [String] ([System.Environment]::OSVersion.Version | Select-Object -Property Build)
$osbuild = [int] ($osbuild_str.Substring(8,$osbuild_str.Length-9))
#$bootmode = Get-ComputerInfo | Select-Object -Property 'BiosFirmwareType'
$bcversion = [decimal](Get-Content -Path $bcpath\BootCamp.xml -TotalCount 7)[-1].Substring(18,3)

$geforce9400id = 'PCI\VEN_10DE&DEV_0863'
$graphics = $geforce9400id
$bootmode = '@{BiosFirmwareType=Uefi}'
$EFInotSupportedModels = "MacPro1,1", "MacPro2,1", "MacPro3,1", "MacPro4,1", "MacPro5,1", "iMac7,1", "iMac8,1", "MacBookAir1,1", "MacBookPro1,1", "MacBookPro2,1", "MacBookPro3,1","MacBookPro4,1", "MacBook1,1", "MacBook2,1", "MacBook3,1","MacBook4,1"
$A1181x64 = "MacBook2,1", "MacBook3,1", "MacBook4,1", "MacBook5,2", "MacBook5,1"

$nvidiaGeForceTesla = @(
    "PCI\VEN_10DE&DEV_0640",    # GeForce 8600M GT
    "PCI\VEN_10DE&DEV_0863",    # GeForce 9400M
    "PCI\VEN_10DE&DEV_07E0",    # GeForce 9600M GT
    "PCI\VEN_10DE&DEV_0620",    # GeForce 320M
    "PCI\VEN_10DE&DEV_0630"     # GeForce GT 330M
)

$nvidiaQuadroKepler = @(
    "PCI\VEN_10DE&DEV_1251",    # Quadro K610M
    "PCI\VEN_10DE&DEV_1249",    # Quadro K1000M
    "PCI\VEN_10DE&DEV_1250",    # Quadro K1100M
    "PCI\VEN_10DE&DEV_1253",    # Quadro K2100M
    "PCI\VEN_10DE&DEV_1247",    # Quadro K2000M
    "PCI\VEN_10DE&DEV_12E0",    # Quadro K3000M
    "PCI\VEN_10DE&DEV_12E2",    # Quadro K3100M
    "PCI\VEN_10DE&DEV_12F0",    # Quadro K4000M
    "PCI\VEN_10DE&DEV_12F2",    # Quadro K4100M
    "PCI\VEN_10DE&DEV_1300",    # Quadro K5000M
    "PCI\VEN_10DE&DEV_1302",    # Quadro K5100M
    "PCI\VEN_10DE&DEV_1340",    # GTX 680M
    "PCI\VEN_10DE&DEV_1342",    # GTX 765M
    "PCI\VEN_10DE&DEV_1343",    # GTX 770M
    "PCI\VEN_10DE&DEV_1344",    # GTX 780M
    "PCI\VEN_10DE&DEV_1345",    # GTX 880M
    "PCI\VEN_10DE&DEV_1346",    # GTX 860M
    "PCI\VEN_10DE&DEV_1347"     # GTX 870M
)



# Self-elevate the script if require
#if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
#    if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
#        $CommandLine = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
#        Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
#        Exit
#    }
#}

function Run-Bootcamp {
    if($A1181x64 -contains $model) {
        $executestring = '\Drivers\Apple\BootCamp64.msi'
    }
    else {
        $executestring = 'setup.exe'
    }
    
    if($osbuild -gt 7602 -And $bcversion -lt 4.1) {
        $command = '/c set __COMPAT_LAYER=WIN7RTM && start /wait '+$bcpath+"\"+$executestring
    }
    else {
        $command = '/c start /wait '+$bcpath+"\"+$executestring
    }
    Start-Process -Wait cmd.exe $command
    if($osbuild -gt 10000 -And $bcversion -lt 5.1) {
        #$args = '/add-driver "+$PSScriptRoot+"\AppleHAL\MacHALDriver.inf'
        Start-Process -Wait $PSScriptRoot\AppleHAL\dpinst.exe
    }
}

#Run-Bootcamp

function Run-GPUupdate {
    foreach ($chip in $graphics) {
    $chip
        foreach($item in $nvidiaGeForceTesla) {
            if ($chip.Contains($item)) {
                Invoke-WebRequest -Uri "https://us.download.nvidia.com/Windows/342.01/342.01-notebook-win10-64bit-international.exe" -OutFile $PSScriptRoot\nv342.exe
                Start-Process $PSScriptRoot\nv342.exe
            }
        }
        foreach($item in $nvidiaQuadroKepler) {
            if ($chip.Contains($item)) {
                Invoke-WebRequest -Uri "https://us.download.nvidia.com/Windows/425.31/425.31-notebook-win10-64bit-international-whql.exe" -OutFile $PSScriptRoot\nv425.exe
                Start-Process $PSScriptRoot\nv425.exe
            }
        }
        if($chip.Contains("PCI\VEN_8086&DEV_0166")) {
            Invoke-WebRequest -Uri "https://downloadmirror.intel.com/29969/a08/win64_15.33.53.5161.exe" -OutFile $PSScriptRoot\intel4k.exe
            Start-Process $PSScriptRoot\intel4k.exe
        }
    }
}
Run-GPUupdate

function Run-9400fix {
    if($bootmode -eq '@{BiosFirmwareType=Uefi}') {
        foreach ($chip in $graphics) {
           if(([String]$chip).Contains($geforce9400id)) {
                Start-Process -Wait $PSScriptRoot\fix9400M_EFI\fix9400M_EFI.bat
           }
        }
    }
}

#Run-9400fix
