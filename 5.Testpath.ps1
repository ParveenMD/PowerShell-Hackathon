# 5. Write the script to create the folder on desktop and also create a file in the same folder in all server and also test the path


write-host ("MD Parveen") -ForegroundColor Green 

$Computer = Get-Content -Path "C:\md.parveen\Servers\servers.txt"

foreach ( $Server in $Computer)

{

   $checkpath = Test-Path \\$Server\C$\
  
   if ($checkpath -eq 'true')

  {
        Write-Host "Creating Folder" -ForegroundColor Green
        New-Item -Path \\$server\C$\Desktop -Name "Samreen"  -ItemType "Directory"

        Write-Host "Creating file" -ForegroundColor Green
        New-Item -Path \\$server\C$\Desktop\Parveen -Name "Affu.txt"  -ItemType "File"

  }
   else

   {
       Write-Host "wrong path , server down" -BackgroundColor Red
   }
 
}