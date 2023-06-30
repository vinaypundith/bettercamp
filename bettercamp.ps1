$bcpath = C:\Users\Vinay\Downloads\BootCamp-041-84868

$model = Get-CimInstance -ClassName Win32_ComputerSystem | Select-Object -Property Model
$graphics = Get-PnpDevice -Class 'Display' | Select-Object -Property InstanceID
$osbuild = [System.Environment]::OSVersion.Version | Select-Object -Property Build
$bootmode = Get-ComputerInfo | Select-Object -Property 'BiosFirmwareType'
$bcversion = [decimal](Get-Content -Path $bcpath\BootCamp.xml -TotalCount 7)[-1].Substring(18,3)


$bcversionstring = (Get-Content -Path .\LineNumbers.txt -TotalCount 8)[-1]

$geforce9400id = 'PCI\VEN_10DE&DEV_0863'
$EFInotSupportedModels = "MacPro1,1", "MacPro2,1", "MacPro3,1", "MacPro4,1", "MacPro5,1", "iMac7,1", "iMac8,1", "MacBookAir1,1", "MacBookPro1,1", "MacBookPro2,1", "MacBookPro3,1","MacBookPro4,1", "MacBook1,1", "MacBook2,1", "MacBook3,1","MacBook4,1"
$A1181x64 = "MacBook2,1", "MacBook3,1", "MacBook4,1", "MacBook5,2", "MacBook5,1"



function Run-Bootcamp {
    if($A1181x64 -contains $model) {
        $executestring = '\Drivers\Apple\BootCamp64.msi'
    }
    else {
        $executestring = 'setup.exe'
    }
    
    if($osbuild -gt 7602 -And $bcversion -lt 4.1) {
    $env:_COMPAT_LAYER=WIN7RTM
    }

    Start-Process -Wait $bcpath\BootCamp\$executestring

    if($osbuild -gt 10000 -And $bcversion -lt 5.1) {
        Start-Process -Wait AppleHAL\dpinst.exe
    }
}

function Run-GPUupdate {
    
}

function Run-9400fix {
    if($bootmode -eq 'Uefi') {
        foreach ($chip in $graphics) {
           if(([String]$chip).Contains($geforce9400id)) {
                Start-Process -Wait fix9400M_EFI\fix9400M_EFI.bat
           }
           elseif(
        }
    }
}


