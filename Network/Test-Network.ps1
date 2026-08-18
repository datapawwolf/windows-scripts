Write-Host "=== Network Diagnostics ==="

Write-Host "`nIP Configuration:"
Get-NetIPConfiguration

Write-Host "`nTesting default gateway..."

$Gateway = (Get-NetRoute -DestinationPrefix "0.0.0.0/0" |
    Sort-Object RouteMetric |
    Select-Object -First 1).NextHop

if ($Gateway) {
    Test-Connection $Gateway -Count 2
}
else {
    Write-Host "No default gateway found."
}

Write-Host "`nTesting Internet connectivity..."
Test-Connection 8.8.8.8 -Count 2

Write-Host "`nTesting DNS..."
Resolve-DnsName microsoft.com