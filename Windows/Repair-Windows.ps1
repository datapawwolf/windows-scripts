# Requires Administrator privileges

Write-Host "Running System File Checker..."

sfc /scannow

Write-Host "`nRunning DISM component repair..."

DISM /Online /Cleanup-Image /RestoreHealth

Write-Host "`nRepair process finished."