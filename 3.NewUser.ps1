# 3.Write a script to create a new user in active directory.

write-host ("MD Parveen") -ForegroundColor Green 

#Import-Module ServerManager
#Add-WindowsFeature -Name "RSAT-AD-PowerShell" -IncludeAllSubFeature
Import-Module ActiveDirectory

$AccountName=read-host("enter the user name")

New-ADUser $AccountName

Get-ADUser -Filter * -Properties samAccountName | select samAccountName

write-host("user added successfully") -ForegroundColor Red