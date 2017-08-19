$packageName = 'k-litecodecpackfull'
$installerType = 'exe'
$url = 'http://files2.codecguide.com/K-Lite_Codec_Pack_1345_Full.exe'
$silentArgs = '/VERYSILENT'
                                         
$checksum = '1e32b56646f554d8d8f4c4ca8c5f14b6'

$checksumType = 'md5'
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -Checksum "$checksum" -ChecksumType "$checksumType"




















