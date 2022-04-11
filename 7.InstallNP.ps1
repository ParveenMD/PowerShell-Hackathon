# 7.Write a script to install to notepad++ in all the server


write-host ("MD Parveen") -ForegroundColor Green 

Write-Host "Starting installation..."

Write-Host "installing Notepad++..."

$File = PowerShell "& 'C:\Users\Administrator.Demo\Desktop\npp.7.9.3.installer.exe'"

$Check = Test-Path $File

If ($Check -eq $True)

{

PowerShell "& 'C:\Users\Administrator.Demo\Desktop\npp.7.9.3.installer.exe'"

Write-Host "Notepad++ installed!"

}

Else

{

Write-Host "Notepad++ is installed."

}


#write-host "MD Parveen"Powershell.exe -ExecutionPolicy Bypass .\Deploy-Notepad++.ps1 -DeploymentType "Install" -DeployMode "Interactive"