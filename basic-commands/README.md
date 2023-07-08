`$PSVersionTable.PSVersion`  
`history`  
`$M=Get-Command * | Measure`  
`$M.Count`  
`$M=Get-Command * | Measure`  
`$M.Count`  
`$N=Get-Module -ListAvailable | Measure`  

`$N.Count`  
`Start-Process notepad`  
`Stop-Process -Name notepad`  
`Get-Help Format-table`  

`Update-Help`  

The get command cmdlet gets all the commands that are installed on the computer,
including those cmdlets, aliases, functions, filters, scripts,
and applications.

` Get-Command -Module Microsoft.PowerShell.Management`  


Get item functions very similarly to the DIR command in the old dos
prompt or command prompt. It gets the item you want at the specified location.
It doesn't get the contents of the item at the location,
unless you use a wildcard character to request all the contents of the item.
For example, here, we'll do get item, period.
This shows you the current directory you're in

` Get-Item .`  

` Get-Item *`  

` Get-Content -Path .\demo_file.txt`

`Get-Content -Path .\demo_file.txt -TotalCount 8`  
` Get-Service`

` Get-Service * | Measure`  

`Get-Service -Name 'eventlog"`  
` Get-Service -Name EventLog` 

`Get-Service -Name Audiosrv` 


` Get-ExecutionPolicy -list`  

`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine`  

Set execution policy for cureent session lony
` Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine`  


` Copy-Item ".\demo_file.txt" -Destination "..\"`  

` Remove-Item ..\demo_file.txt`  

Cloud Shell Powershell  
------------------------
`Get-Module -ListAvailable`  
`Get-Command -Module "Az.Compute"`  
`Get-Help Start-AzVM`  
`Help Start-AzVM -Examples`  