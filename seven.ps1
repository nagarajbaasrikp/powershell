Write-Host "cmdlet to check if a process is running"

$process_name = Read-Host "Enter the name of the process"
$process_object = Get-Process $process_name
if($process_object -eq $null) {
    Write-Host "Process is not running"
}
elseif ($process_object.Responding) {
    Write-Host "Process is running correctly"
}
else {
    Write-Host "$process_name is running"
}

#script to check amount of free space and print a message
$free_space = (Get-CimInstance -ClassName Win32_LogicalDisk | Where-Object DeviceID -eq "C:").FreeSpace / 1GB
#Write-Host $free_space
if($free_space -gt 50) {
    Write-Host "No problem, you have plenty of space."
}
elseif($free_space -gt 20) {
    Write-Host "Clear some stuff up when you are free"
}
else {
    Write-Host "Critical! Free some space!"
}

#switch statement
$number = Read-Host "Enter a number 1-5"
switch($number) {
    "1" {
        Write-Host "You chose 1"
    }
    "2" {
        Write-Host "You chose 2"
    }
    "3" {
        Write-Host "You chose 3"
    }
    "4" {
        Write-Host "You chose 4"
    }
    "5" {
        Write-Host "You chose 5"
    }
    default {
        Write-Host "Invalid Choice"
    }
}

$file_name = "document.docx"
switch -Wildcard ($file_name) {
    "*.doc" {
        Write-Host "Word Document"
    }
    "*.docx" {
        Write-Host "Word Document"
    }
    "*.pdf" {
        Write-Host "PDF Document"
    }
    "*.xls" {
        Write-Host "Excel Document"
    }
    default {
        Write-Host "Unknown Document Type"
    }
}