Basic Commands
------------------------
PowerShell uses this verb-noun naming system,
each cmdlet name consists of a standard verb with a specific noun.


Nouns are very much like nouns in any other language,
they describe specific types of objects that are important to systems
administration.

e.g.

` Get-Service`
`Start-Process notepad`  
`Stop-Process -Name notepad`  

`Get-Verb`  

`Get-Command -Noun service`  



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


## Installing Softwares - Chrome
```
$Path = $env:TEMP; $Installer = "chrome_installer.exe"; Invoke-WebRequest "https://dl.google.com/chrome/install/latest/chrome_installer.exe" -OutFile $Path$Installer; Start-Process -FilePath $Path$Installer -Args "/silent /install" -Verb RunAs -Wait; Remove-Item $Path$Installer
```

```
gcloud compute instances create vm-gcloud-with-chrome --project=my-poc-dilip --zone=us-west4-b --machine-type=e2-medium --metadata=ps-cmd=\$Path\ =\ \$env:TEMP\;\ \$Installer\ =\ \"chrome_installer.exe\"\;\ Invoke-WebRequest\ \"https://dl.google.com/chrome/install/latest/chrome_installer.exe\"\ -OutFile\ \$Path\$Installer\;\ Start-Process\ -FilePath\ \$Path\$Installer\ -Args\ \"/silent\ /install\"\ -Verb\ RunAs\ -Wait\;\ Remove-Item\ \$Path\$Installer --create-disk=auto-delete=no,boot=yes,device-name=vm-gcloud-with-chrome,image=projects/windows-cloud/global/images/windows-server-2016-dc-v20231011,mode=rw,size=50,type=projects/my-poc-dilip/zones/us-central1-a/diskTypes/pd-balanced
```