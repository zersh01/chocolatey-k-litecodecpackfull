$packageName = 'k-litecodecpackfull'
$installerType = 'exe'
$url = 'https://files3.codecguide.com/K-Lite_Codec_Pack_1695_Full.exe'
$silentArgs = '/VERYSILENT /NORESTART'
                                         
$checksum = '2dc3d6b1fbd6a5894a3aa13c53280dd0'

$checksumType = 'md5'
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -Checksum "$checksum" -ChecksumType "$checksumType"

