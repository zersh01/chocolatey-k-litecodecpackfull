$packageName = 'k-litecodecpackfull'
$installerType = 'exe'
$url = 'http://download.betanews.com/download/1094057842-3/K-Lite_Codec_Pack_1155_Full.exe'
$silentArgs = '/VERYSILENT'

$checksum = '08469faa85296bd0ba3638b733e20321'
$checksumType = 'md5'
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -Checksum "$checksum" -ChecksumType "$checksumType"
