$packageName = 'k-litecodecpackfull'
$installerType = 'exe'
$url = 'http://files2.codecguide.com/K-Lite_Codec_Pack_1415_Full.exe'
$silentArgs = '/VERYSILENT /NORESTART'
                                         
$checksum = '974d795fa61ebf09cb613256a7b0a4ba'

$checksumType = 'md5'
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -Checksum "$checksum" -ChecksumType "$checksumType"
























