# Requires Administrator privileges

Write-Host "Stopping Print Spooler..."

Stop-Service -Name Spooler -Force

Write-Host "Clearing print queue..."

Remove-Item "$env:SystemRoot\System32\spool\PRINTERS\*" -Force -ErrorAction SilentlyContinue

Write-Host "Starting Print Spooler..."

Start-Service -Name Spooler

Write-Host "Print queue cleared."