# Three Importat Commands
-------------------------

Three commands that I consider to be the building blocks of learning to
use PowerShell on a daily basis. 
### 1. Get-Help  

`Get-Help`
This cmdlet helps you get information to how to use a cmdlet. 

### 2. Get-command  

`Get-command`   
This is the command that you would use to get only the commands that are
currently imported into PowerShell.

`Get-Command start*`  

### 3. Get-Service  

`Get-Service`  
This cmdlet helps you get the objects that represent the started and stop
services on the computer. You're currently logged into.

` Get-Service win*`  

`Get-Service -Name win*`  

` Get-Service -Name win* -Exclude winrm`  


# Variables
-------------------------
PowerShell works with objects and lets us create named objects called variables.
Variable names can include underscore character and any alphanumeric character.
We specify these variables by typing in the dollar sign character followed by
the variable name.


`$location=Get-Location`  
` $location`  
