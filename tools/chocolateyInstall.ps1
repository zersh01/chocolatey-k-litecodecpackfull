$packageName = 'k-litecodecpackfull'
$installerType = 'exe'
$url = 'http://download.betanews.com/download/1094057842-3/K-Lite_Codec_Pack_1201_Full.exe'
$silentArgs = '/VERYSILENT'

$checksum = '71f349acb9b23cc35d94ecf4994953d9'
$checksumType = 'md5'
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -Checksum "$checksum" -ChecksumType "$checksumType"




