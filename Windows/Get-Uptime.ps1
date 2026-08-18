$OS = Get-CimInstance Win32_OperatingSystem

$BootTime = $OS.LastBootUpTime
$Uptime = (Get-Date) - $BootTime

Write-Host "Last boot: $BootTime"
Write-Host "Uptime: $($Uptime.Days) days, $($Uptime.Hours) hours, $($Uptime.Minutes) minutes"