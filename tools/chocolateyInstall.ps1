$packageName = 'k-litecodecpackfull'
$installerType = 'exe'
$url = 'http://files2.codecguide.com/K-Lite_Codec_Pack_1460_Full.exe'
$silentArgs = '/VERYSILENT /NORESTART'
                                         
$checksum = '9b19d6f79706ce6f55233385fad6e748'

$checksumType = 'md5'
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -Checksum "$checksum" -ChecksumType "$checksumType"































