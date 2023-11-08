
$Username = "dilip"  # Your username with appropriate permissions - target VM
$Password = ConvertTo-SecureString -String "pwd" -AsPlainText -Force  # Target PC pwd
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Username, $Password
$Session = New-PSSession -ComputerName 10.182.0.4 -Credential $Credential

Invoke-Command -Session $Session -ScriptBlock {
    #Get-Service -Name ServiceName
     
    #Check if a process named "chrome" is running
    if (Get-Process -Name chrome -ErrorAction SilentlyContinue) {
        Write-Host "Chrome is running."
    } else {
        Write-Host "Chrome is not running."
    }
}
