# 9.Write a script to display the top 10 process with high utilization of all the server and give output in html file (Table Heading ID, Utilization, ProcessName, ServerName)


write-host ("MD Parveen") -ForegroundColor Green 

$css ="<style>TABLE{ border-width: 1px;border-style: solid;border-color:blue;border-collapse: collapse;align:center;width:100%;} 
TH{border-width: 1px;background-color: #BEBE80;bgcolor=#F1E0D1;padding: 3px;border-style: solid;border-color: blue;}
TD{border-width: 1px;color: white;background-color: #4C8385;padding: 3px;border-style: solid;border-color: black; text-align: center}
h1{text-shadow: 1px 1px 1px #000,3px 3px 5px green; text-align: center;font-style: calibri;font-family: Calibri;</style>"   
$css +="<HTML><BODY style=background-color:powderblue>"
$css +="<h1 align=center> TOP 1O CUP UTILIZED PROCESSES OF ALL THE SERVERS</h1>"
$css +="</br></br>"
$css +="</br></br>"


$Servers = Get-Content 'C:\md.parveen\Servers\servers.txt'
foreach ($Server in $Servers)
{
$info =Get-Process -cn $Server|Sort-object CPU -Descending| Select -first 10 -Property ID, ProcessName, cpu | ConvertTo-Html
$css +="<BODY><HTML>"
$css +="<table border=2 width=100% >"
$css +="<tr><th><B>$Server</B></th><td> "+$info+" </td></tr>"
$css += "</table></BODY></HTML>"
$css +="</br></br>"
$css +="</br></br>"
$css | Out-File C:\md.parveen\Processes.html
}