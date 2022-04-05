# 2.Write a script to display the IP, MAC Addresses of given servers.


write-host ("MD Parveen") -ForegroundColor Green
 
Function Get-Mac {  $ServerName = Get-Content -Path C:\md.parveen\Servers\servers.txt
$ErrorActionPreference = 'Stop'
 foreach ($Server in $ServerName)
 {  
  Get-WmiObject -Class "Win32_NetworkAdapterConfiguration" -ComputerName $Server | ? IpEnabled -EQ "True" | select DNSHostName, IPAddress, MACAddress | FT -AutoSize
 }
 }
 Get-Mac