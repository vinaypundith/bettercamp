$bcpath = 'C:\Users\Vinay\Downloads\BootCamp-041-84868'
$A1181x64 = "MacBook2,1", "MacBook3,1", "MacBook4,1", "MacBook5,2", "MacBook5,1"

$osbuild_str = [String] ([System.Environment]::OSVersion.Version | Select-Object -Property Build)
$osbuild = [int] ($osbuild_str.Substring(8,$osbuild_str.Length-9))
$osbuild
$bootmode = Get-ComputerInfo | Select-Object -Property 'BiosFirmwareType'
$bcversion = [decimal](Get-Content -Path $bcpath\BootCamp.xml -TotalCount 7)[-1].Substring(18,3)

function Run-Bootcamp {
    if($A1181x64 -contains $model) {
        $executestring = '\Drivers\Apple\BootCamp64.msi'
    }
    else {
        $executestring = 'setup.exe'
    }

    if($osbuild -gt 7602 -And $bcversion -lt 4.1) {
    $bcversion
    $env:__COMPAT_LAYER=WIN7RTM
    $env:_COMPAT_LAYER
    }
    $executestring
    Start-Process -Wait $bcpath\$executestring

    if($osbuild -gt 10000 -And $bcversion -lt 5.1) {
        Start-Process -Wait AppleHAL\dpinst.exe
    }
}

Run-Bootcamp
