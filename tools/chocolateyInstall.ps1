$packageName = 'k-litecodecpackfull'
$installerType = 'exe'
$url = 'https://files3.codecguide.com/K-Lite_Codec_Pack_1550_Full.exe'
$silentArgs = '/VERYSILENT /NORESTART'
                                         
$checksum = '3d7fa189fb6b8053a2fa2f49692c757e'

$checksumType = 'md5'
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -Checksum "$checksum" -ChecksumType "$checksumType"







































