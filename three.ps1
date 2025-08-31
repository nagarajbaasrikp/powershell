#nneds to be run as admin
#New-Item -ItemType Directory -Path '.\FolderA' -Force
#New-Item -ItemType Directory -Path '.\FolderB' -Force
#New-Item -ItemType SymbolicLink -Path '.\FolderA\PtrToB' -Target '.\FolderB' -Force
#New-Item -ItemType SymbolicLink -Path '.\FolderB\PtrToA' -Target '.\FolderA' -Force
#Remove-Item .\FolderA, .\FolderB -Recurse
$date = Get-Date
Set-Content -Path file.txt $date
Get-Content file.txt
Add-Content -Path .\file.txt 'This is another line after the date!'
Get-Content .\file.txt
Remove-Item .\file.txt

Set-Content -Path file.txt -Value "Journal Entry: $(Get-Date -Format "yyyy-MM-dd")"
Get-Content file.txt
Remove-Item .\file.txt

#Move-Item -Path ______ -Destination _______
#Copy-Item -Path ______ -Destination _______
#Rename-Item -Path ____ -NewName ___________
Set-Content -Path file1.txt -Value 'This is the OG content of the file'
Get-Content .\file1.txt
Get-FileHash .\file1.txt -Algorithm MD5
Add-Content -Path .\file1.txt -Value 'This is an additional line'
Get-FileHash -Path file1.txt -Algorithm MD5
Remove-Item file1.txt
