# Define the SSID you want to trigger the change
$SSID = "iDET"

# Get the network adapter that is connected to the SSID
$adapter = Get-NetAdapter -PhysicalMediaType Wi-Fi | Where-Object {$_.Status -eq "Up" -and $_.InterfaceDescription -like "*$SSID*"}

# Check if the adapter is connected to the specific SSID
if ($adapter) {
    # Set the DNS to DHCP
    Set-DnsClientServerAddress -InterfaceIndex $adapter.ifIndex -ResetServerAddresses
} else {
    # Display a message indicating that the adapter is not connected to the specific SSID
    Write-Host "Not connected to $SSID"
}


Read-Host -Prompt "Press Enter to exit"
