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

