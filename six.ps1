#variables
$myFile = "mynewfile.txt"
New-Item -ItemType File $myFile
Get-ChildItem
Add-Content -Value "Test Data" -Path $myFile
Get-Content $myFile
Remove-Item $myFile

#Create Dynamic Scripts
$app_name = Read-Host "Enter the name of the app"
$appDataDir = "${app_name}_Data"

New-Item $appDataDir -ItemType "Directory"

New-Item -ItemType "File" -Path "${appDataDir}\config.txt"
Add-Content -Path "${appDataDir}\config.txt" -Value "You are inside the ${app_data} app`nThe time is $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")"
Get-Content "${appDataDir}\config.txt"

Remove-Item -Path "${appDataDir}\config.txt"
Remove-Item $appDataDir