$systype = systeminfo | findstr "System"
$dns = ipconfig /all | findstr "DNS"
$mem = systeminfo | findstr "Memory"

$content = $boottime + $systype + $mem + $dns + $ip
$content | out-file -filepath ~/Downloads/ImportantInfo.txt

clear

 if($content = $true)
{
read-host -prompt "File successfully exported to ~/Downloads/ImportantInfo.txt given that it existed at the time"
}
else
{
read-host -prompt "Task failed quite unsuccessfully"
}
