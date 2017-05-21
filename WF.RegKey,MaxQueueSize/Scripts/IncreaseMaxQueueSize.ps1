$GetParentKey = Get-Item -Path 'HKLM:\SYSTEM\CurrentControlSet\services\HealthService\Parameters\Management Groups'
$MGName = $GetParentKey.getsubkeynames()
Foreach ($Name in $MGName){
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\services\HealthService\Parameters\Management Groups\$Name" -Name 'maximumQueueSizeKb' -Value 76800 -Force
}
