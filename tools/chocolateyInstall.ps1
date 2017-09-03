$packageName = 'k-litecodecpackfull'
$installerType = 'exe'
$url = 'http://files2.codecguide.com/K-Lite_Codec_Pack_1350_Full.exe'
$silentArgs = '/VERYSILENT'
                                         
$checksum = 'a3d48ef7d6e6d65e9aab269e59735e01'

$checksumType = 'md5'
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -Checksum "$checksum" -ChecksumType "$checksumType"




















