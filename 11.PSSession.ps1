# 11. Write a script to Create the PSSession for all the server and Enter in that sessions print hostname


write-host ("MD Parveen") -ForegroundColor Green 

$servers = Get-Content "C:\md.parveen\Servers\servers.txt"
foreach ($i in $servers)
{ 
New-PSSession -ComputerName $i

Enter-PSSession -ComputerName $i

$output = Get-WmiObject win32_bios -ComputerName $i | Select-Object  PSComputerName

write-host "the host name of $i is: $output " -BackgroundColor Red

Exit-PSSession
}