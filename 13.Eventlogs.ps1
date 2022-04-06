#13.Write a script to display the event logs for the following ID and Logname for the all servers.
#ID= 4624,4672,9027
#Logname = 'System', Security', Applcation'


write-host ("MD Parveen") -ForegroundColor Green
Get-EventLog -logname System
Get-EventLog -LogName Security
Get-EventLog -LogName Application
Get-EventLog -LogName application | Where-Object {$_.InstanceID -eq '4624','4672','9027'}
write-host ("output")