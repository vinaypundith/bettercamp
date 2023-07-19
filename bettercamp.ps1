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

# Self-elevate the script if require
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
    if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
        $CommandLine = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
        Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
        Exit
    }
}

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
    
}

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
