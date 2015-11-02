$packageName = 'k-litecodecpackfull'
$installerType = 'exe'
$url = 'http://download.betanews.com/download/1094057842-3/K-Lite_Codec_Pack_1155_Full.exe'
$silentArgs = '/VERYSILENT'
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes 0
