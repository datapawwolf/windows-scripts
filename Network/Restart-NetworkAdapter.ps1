# Requires Administrator privileges

$Adapter = Get-NetAdapter |
    Where-Object Status -eq "Up" |
    Select-Object -First 1

if ($Adapter) {
    Write-Host "Restarting adapter: $($Adapter.Name)"

    Restart-NetAdapter -Name $Adapter.Name -Confirm:$false

    Write-Host "Network adapter restarted."
}
else {
    Write-Host "No active network adapter found."
}