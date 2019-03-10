$packageName = 'k-litecodecpackfull'
$installerType = 'exe'
$url = 'http://files2.codecguide.com/K-Lite_Codec_Pack_1475_Full.exe'
$silentArgs = '/VERYSILENT /NORESTART'
                                         
$checksum = 'ca064533216155e10e693166cd995499'

$checksumType = 'md5'
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -Checksum "$checksum" -ChecksumType "$checksumType"

































