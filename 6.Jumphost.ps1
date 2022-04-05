#6.Write a Script to copy a file from Jumphost to all the remaining Server.


write-host ("MD Parveen") -ForegroundColor Green 

$server = Get-Content -Path "C:\md.parveen\Servers\servers.txt"
$Folder = "C:\md.parveen\*"
Foreach ( $servers in $server)
{
    Copy-Item $Folder "\$servers\C$\" -Recurse -Force
    Write-Host "Content copied successfully" -ForegroundColor Red
}
