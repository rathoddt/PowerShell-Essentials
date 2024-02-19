# Working with Environment Variables

### Listing Environment Variables
gci env:* | sort-object name

$Path variable
```
gci env:Path
dir env:
Get-ChildItem -Path Env:
```

### Adding/appending Environment Variables
One of the easiest ways to add or append an environment variable using PowerShell is to use $Env to set an environment variable using the assignment operator (=) and to append or create a new environment variable using the (+=) operator.

For example, if you wish to create the AZURE_RESOURCE_GROUP environment variable in your system that doesn’t exist by default, you can do it using the below command:

Append to Path variable
```
$env:Path += 'C:\Program Files\PostgreSQL\14\bin'
``

### Printing complete output rather tahn truncated one
```
gci env:Path | Export-CSV path.txt
```
