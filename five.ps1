Get-Service | Sort-Object Status | Select-Object -First 10 | Format-List Name, Status, StartType

Get-Service | Sort-Object Status | Select-Object -First 10 | Format-Table Name, Status, StartType

Get-Process | ConvertTo-Html | Out-File '.\Report.html'

#Start-Process -FilePath '.\Report.html'

Remove-Item '.\Report.html'

Write-Host "$(Get-Date -Format "dddd, MMMM dd, yyyy")"