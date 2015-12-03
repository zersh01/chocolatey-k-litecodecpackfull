$packageName = 'k-litecodecpackfull'
$installerType = 'exe'
$url = 'http://download.betanews.com/download/1094057842-3/K-Lite_Codec_Pack_1170_Full.exe'
$silentArgs = '/VERYSILENT'

$checksum = '300ee8fc0dd0b4663957e688104334be'
$checksumType = 'md5'
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -Checksum "$checksum" -ChecksumType "$checksumType"

