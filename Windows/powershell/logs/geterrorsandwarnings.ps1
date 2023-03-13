# Get the time of the last system boot
$lastBootTime = Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object LastBootUpTime

# Get all event logs since the last system boot
$events = Get-WinEvent -FilterHashtable @{
    LogName='Application','System','Security'
    Level=2,3
    StartTime=$lastBootTime.LastBootUpTime
}

# Filter events by level (Errors and Warnings)
$errorsAndWarnings = $events | Where-Object {$_.Level -ge 2}

# Format the events and write to a file
$output = $errorsAndWarnings | Format-Table TimeCreated, LevelDisplayName, Message -AutoSize
$output | Out-File -FilePath "C:\temp\eventlog.txt"
Read-Host -Prompt "Press Enter to exit"
