Enable-PSRemoting -Force

 Enter-PSSession -ComputerName 34.125.114.227 -UseSSL -SessionOption (New-PSSessionOption
-SkipCACheck -SkipCNCheck) -Credential $credentials

Invoke-Command -ComputerName 34.125.114.227 -ScriptBlock { Get-Culture } -UseSSL -Session
Option (New-PSSessionOption -SkipCACheck -SkipCNCheck) -Credential $credentials

Set-Item wsman:localhost\client\trustedhosts -value 10.182.0.4
Set-Item wsman:localhost\client\trustedhosts -value 10.182.0.3

 netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=yes

 $s = New-PSSession -ComputerName 10.182.0.4 -Credential $credentials

\\10.182.0.4\c$

\\10.182.0.4\c$\sw-repo

$session = New-PSSession -ComputerName 10.182.0.4 -Credential $credentials


 Invoke-Command -Session $session -ScriptBlock { Copy-Item "\\10.182.0.3\c$\ps-test\test.txt" -Destination "\\10.182.0.4\c$\sw-repo\test.txt"}

Copy-Item -Path -Path "C:\ps-test\test.txt" -Destination "\\10.182.0.4\c$\sw-repo\test.txt"

 Invoke-Command -Session $session -ScriptBlock { Copy-Item -Path "c:/ps-test/test.txt" -Destination "\\10.182.0.4\c$\sw-repo \test.txt"}

Copy-Item -Path "C:\Logfiles\*" -Destination "C:\Drawings" -Recurse

#Method
#=======
$session = New-PSSession -ComputerName 10.182.0.4 -Credential $credentials
 Copy-Item "C:\ps-test\test.txt" -Destination "c:\sw-repo\test.txt" -ToSession $session

https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/copy-item?view=powershell-7.3



#Method 3:
#-------------
$Source = "C:\ps-test\test.txt"
$Dest   = "\\10.182.0.4\c$\sw-repo\test.txt"
$Username = "dilip"
$Password = "^eBSJ]gj%O[[0-w"

$WebClient = New-Object System.Net.WebClient
$WebClient.Credentials = New-Object System.Net.NetworkCredential($Username, $Password)

$WebClient.UploadFile($Dest, $Source)