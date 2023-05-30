$sysInfo = Get-WmiObject -Class Win32_OperatingSystem
$bootTime = $sysInfo.LastBootUpTime
$bootTime = [Management.ManagementDateTimeConverter]::ToDateTime($bootTime)
$sysInfo = Get-WmiObject -Class Win32_OperatingSystem
$uptime = (Get-Date) - [Management.ManagementDateTimeConverter]::ToDateTime($sysInfo.LastBootUpTime)

$uptimeString = '{0} days, {1:D2}:{2:D2}:{3:D2}' -f $uptime.Days, $uptime.Hours, $uptime.Minutes, $uptime.Seconds

read-Host -prompt "System last booted at $bootTime and has been on for $uptimeString"
