$packageName = 'k-litecodecpackfull'
$installerType = 'exe'
$url = 'http://download.betanews.com/download/1094057842-3/K-Lite_Codec_Pack_1190_Full.exe'
$silentArgs = '/VERYSILENT'

$checksum = '7436420b2841c5de428abec6fa86a4ef'
$checksumType = 'md5'
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -Checksum "$checksum" -ChecksumType "$checksumType"



