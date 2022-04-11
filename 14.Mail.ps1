# 14.Write a script for sending a mail to mohit.my844@outlook.com with the details in below snip when CPU, Disk, Memory utilization above the threshold value. Take Threshold value as 60.

write-host ("MD Parveen") -ForegroundColor Green 

$mymail="parveensamreen@outlook.com"

$smtp = "smtp.outlook.com"

$to = "mohit.my844@outlook.com"

$sub="power shell task"

$body= "Welcome to PowerShell Training"

$creds = (Get-Credential -Credential "$myemail")

start-sleep 2

Send-MailMessage -To $to -From $mymail -Subject $sub -Body $body -SmtpServer $smtp -Credential $creds -UseSsl -Port 578 -DeliveryNotificationOption OnSuccess