$uri = read-host -prompt "Enter website"
$inputProxy = read-host -prompt "Use proxy (required on school networks) [y] or [n]"

if($inputProxy -eq "y")
{
$User = read-host "Username"
$Password = read-host "Password"
$PWord = ConvertTo-SecureString $Password -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord
}

$inputAnswer = read-host -prompt "Store as a .txt file [y] or [n]"


if($inputProxy -eq "y")
{
$content = curl $uri -proxy http://proxy2.eq.edu.au -proxycredential $Credential
}

if($inputProxy -eq "n")
{
$content = curl $uri
}

if($inputAnswer -eq "y")
{
$content | out-file -filepath "~/Downloads/curlresult.txt" -encoding ascii -force
}


if($inputAnswer -eq "n")
{
$content
}

read-host -prompt "Probably successfuly executed. Press Enter to exit"
