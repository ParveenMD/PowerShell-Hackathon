# 10.Write Script to display the BIOS Version, Serial Number, Machine Name of all the server and Display in Out-Grid Viewy


write-host ("MD Parveen") -ForegroundColor Green 

$array = @()

$Computer = Get-Content -Path "C:\md.parveen\Servers\servers.txt"
foreach ($i in $Computer){
	
$output = Get-WmiObject win32_bios -ComputerName $i | Select-Object BIOSVersion,SerialNumber, MachineName
$array += $output
}
$array | Out-GridView

