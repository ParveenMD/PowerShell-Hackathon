#4.Write a script to display the ID, ProcessName, MachineName which start from letter c for all servers.

Write-Host ("MD Parveen") -ForegroundColor Green

$Serverfile = Get-Content "C:\md.parveen\Servers\servers.txt"

foreach($server in $Serverfile)
{
  Get-Process -Name "c*" -ComputerName "$server" |Format-Table -Property Id, ProcessName, MachineName
  }