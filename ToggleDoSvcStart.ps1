$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\DoSvc"
$valueName = "Start"

$currentValue = Get-ItemProperty -Path $registryPath -Name $valueName | Select-Object -ExpandProperty $valueName

if ($currentValue -eq 4) {
    $newValue = 3
} elseif ($currentValue -eq 3) {
    $newValue = 4
} else {
    Write-Host "Unexpected value: $currentValue. No changes made."
    exit
}

Set-ItemProperty -Path $registryPath -Name $valueName -Value $newValue

Write-Host "Current registry value: $newValue. Please restart for changes to take effect."
