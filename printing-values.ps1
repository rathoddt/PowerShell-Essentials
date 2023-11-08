# powershell -ExecutionPolicy Bypass -File .\printing-values.ps1
 Write-Host "Sleeping for 2 seconds"
Write-Host "$(Get-Date -Format HH:mm:ss)"
 Start-Sleep -Seconds 1
Write-Host "$(Get-Date -Format HH:mm:ss)"
Write-Information 'Done!'
Write-Host "Process ID: ($Process.ProcessId)"
Write-Host(Get-NetIPAddress)


