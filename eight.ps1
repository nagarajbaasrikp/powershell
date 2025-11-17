#Script to Display System Info
$choice = Read-Host "Enter`n1. OS`n2. CPU`n3. RAM`n4. Current User`n"
switch($choice) {
    "1" {
        $os = Get-CimInstance Win32_OperatingSystem
        $os_name = $os.Caption
        $os_version = $os.Version
        Write-Host "OS Name: $os_name`nOS Version: $os_version"
    }
    "2" {
        $cpu = Get-CimInstance Win32_Processor
        $cpu_name = $cpu.Name
        $cpu_cores = $cpu.NumberOfCores
        $cpu_speed = $cpu.MaxClockSpeed
        Write-Host "Processor Name: $cpu_name`nNo. of cores: $cpu_cores`nClock Speed: $cpu_speed"
    }
    "3" {
        $total_memory = [math]::Round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)
        Write-Host "RAM Size: $total_memory"
    }
    "4" {
        $current_user = $env:USERNAME
        Write-Host "Current User: $current_user"
    }
    default {
        Write-Host "Invalid Choice"
    }
}

#Disk Usage Checker

$total_size = (Get-CimInstance Win32_LogicalDisk | Where-Object DeviceID -eq "C:").Size / 1GB
$free_space = (Get-CimInstance Win32_LogicalDisk | Where-Object DeviceID -eq "C:").FreeSpace / 1GB
Write-Host "Total size: $total_size"

$used_space_percentage = ($total_size - $free_space) / $total_size * 100
Write-Host "Used Space: $(($total_size - $free_space))"
Write-Host "Used Percentage: $used_space_percentage"