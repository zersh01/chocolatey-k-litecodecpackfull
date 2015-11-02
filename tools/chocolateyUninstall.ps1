$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
 
$packageName = 'k-litecodecpackfull'
$fileType = 'exe'
$silentArgs = '/SILENT /NORESTART'
  
if ($is64bit) {
  $uninstallString = (Get-ItemProperty HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\KLiteCodecPack_is1).UninstallString 
} else {
  $uninstallString = (Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\KLiteCodecPack_is1).UninstallString
}
 
if ($uninstallString -ne "") {
    Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $uninstallString
}
