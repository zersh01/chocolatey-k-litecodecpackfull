$packageName = 'k-litecodecpackfull'
$fileType = 'exe'
$silentArgs = '/SILENT /NORESTART'

$osBitness = Get-ProcessorBits
if ($osBitness -eq 64) 
 {
  $uninstallString = (Get-ItemProperty HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\KLiteCodecPack_is1).UninstallString 
 } else {
  $uninstallString = (Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\KLiteCodecPack_is1).UninstallString
  }

if ($uninstallString -ne "") {
    Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $uninstallString
 }




