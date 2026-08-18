Write-Host "=== Computer Information ==="

Write-Host "`nComputer:"
Get-ComputerInfo |
    Select-Object CsName, WindowsProductName, WindowsVersion, OsArchitecture

Write-Host "`nCPU:"
Get-CimInstance Win32_Processor |
    Select-Object Name

Write-Host "`nMemory:"
$RAM = Get-CimInstance Win32_ComputerSystem

Write-Host "Installed RAM: $([math]::Round($RAM.TotalPhysicalMemory / 1GB, 2)) GB"

Write-Host "`nDisk:"
Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
    Select-Object DeviceID,
        @{Name="SizeGB"; Expression={[math]::Round($_.Size / 1GB, 2)}},
        @{Name="FreeGB"; Expression={[math]::Round($_.FreeSpace / 1GB, 2)}}