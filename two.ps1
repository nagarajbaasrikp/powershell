#Start-Process 'C:\Program Files\PowerShell\7\pwsh.exe'
#Clear-RecycleBin -Confirm
Get-Command -CommandType Cmdlet
Get-Command -CommandType Filter
Get-Command -CommandType Function
Get-NetAdapterAdvancedProperty
New-Item '.\myfile.txt' -ItemType File
New-Item '.\anotherfile.txt' -ItemType File
Get-ChildItem
#Write-Host 'Hello, I am a Test!' >> '.\anotherfile.txt' #doesn't redirect to file
Write-Output 'Hello, I am another Test!' >> '.\myfile.txt'
Get-Content 'myfile.txt'
Get-Content 'anotherfile.txt'
Get-ChildItem -Name myfile.txt | Get-ItemProperty
#Set-Alias explain Get-Help -Full
#explain Get-ChildItem
Get-ChildItem C:\ -Force
New-Item PushFolder -ItemType Directory
Set-Location .\PushFolder
Push-Location
Set-Location C:\Windows
Get-Location
Pop-Location
Get-Location
Set-Location ..
Remove-Item myfile.txt, anotherfile.txt, PushFolder