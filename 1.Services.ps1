#Write the script to display the Status, Name, RequiredServices and DependentServices properties of the services
#on the computer and export the output to CSV file.

Write-Host MD Parveen -ForegroundColor Green
Get-Service | Select-Object  "Name", "Status","DependentServices","RequiredServices" | Out-File "C:\md.parveen\sevices.csv"


