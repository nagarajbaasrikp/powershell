Get-Process | Get-Member
New-Item -ItemType Directory test_directory
New-Item -ItemType File test.txt
Add-Content -Path test.txt -Value "This is content"
Get-Content .\test.txt
#Get-ChildItem | Get-Member
Get-ChildItem | Select-Object Name, CreationTime
Get-ChildItem | Select-Object Name, CreationTime
$test_directory = Get-ChildItem | Where-Object {$_.Name -eq "test_directory"}
$test_directory.CreationTime
$test_file = Get-ChildItem | Where-Object {$_.Name -eq "test.txt"}
$test_file | Get-Member
Write-Output ""
$test_file.BaseName
$test_directory.BaseName

Write-Output "Changing Last Write Time:"
$test_file.LastWriteTime
$test_file.LastWriteTime = "01/01/2025"
$test_file.LastWriteTime

Write-Output "Changing Creation Time:"
$test_file.CreationTime
$test_file.CreationTime = [datetime]::ParseExact("22/04/1991 04:30:00", "dd/MM/yyyy HH:mm:ss", $null)
$test_file.CreationTime

Write-Output $test_file.Directory
Remove-Item .\test_directory, .\test.txt

Write-Output ""
Write-Output "Moving on to Process Object"
$settings = Get-Process | Where-Object {$_.Name -eq "SystemSettings"}
$settings.Container, $settings.CPU, $settings.StartInfo, $settings.StartTime

Start-Process -Path C:\Windows\System32\notepad.exe
Start-Sleep -Seconds 2.5
#sleep 2.5
(Get-Process Notepad).Kill()

Start-Process -Path C:\Windows\System32\notepad.exe
Start-Sleep -Seconds 2.5
(Get-Process -Name Notepad).Kill()

Get-ChildItem | Measure-Object

Get-ChildItem C:\Windows | Measure-Object -Property Length -Sum -Average

Get-Process | Sort-Object StartTime | Select-Object -First 5 -Property Name, StartTime

Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5 -Property Name, WorkingSet