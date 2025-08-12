Get-Process | Sort-Object | Select-Object -First 5
Get-Process | Sort-Object -Descending | Select-Object -First 5
Get-Process -Name 'msedge' -FileVersionInfo
Get-Location
# Set-Location 'C:\Windows\System32'
#Start-Process 'C:\Program Files\PowerShell\7\pwsh.exe'
#Stop-Process
Test-Connection -ComputerName google.com -Count 5
Test-Connection google.com -Quiet