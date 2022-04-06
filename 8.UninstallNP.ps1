# 8. Write a script to uninstall to notepad++ in all the server


write-host ("MD Parveen") -ForegroundColor Green 

$servers = Get-Content -Path C:\md.parveen\Servers\servers.txt
foreach ($server in $servers){
Write-Host "Unistalling Notepad++ in $server" -ForegroundColor DarkYellow
$app =  Get-WmiObject -class win32_Product -ComputerName $server | where { $_.name -eq "Notepad++ (64-bit)" }
Write-Host "Notepad++ is unistalled in $server " -ForegroundColor Green
}




