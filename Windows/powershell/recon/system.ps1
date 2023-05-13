$content = systeminfo | findstr "OS"

if($content = "Windows")
{
$content_a = systeminfo | findstr "System"
}

else
{
echo "Windows is not current operating system"
}

$content_a | out-file -filepath C:/Users/mnvak/Downloads/System.txt
