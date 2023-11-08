$Path='c:\build'
New-Item -Path 'c:\build' -ItemType Directory
 #New-Item -Path 'c:\build\test.txt' -ItemType File
gcloud --version
gsutil rsync -r "gs://my-poc-dilip/" "C:\build"

Write-Host "Installing chrome..."
$Path = $env:TEMP; $Installer = "chrome_installer.exe"; Invoke-WebRequest "https://dl.google.com/chrome/install/latest/chrome_installer.exe" -OutFile $Path$Installer; Start-Process -FilePath $Path$Installer -Args "/silent /install" -Verb RunAs -Wait; Remove-Item $Path$Installer

Push-Location $Path
$Path='c:\build'
Write-Host "Installing qlik sense ...."
$insatll_status=Start-Process `
        -FilePath C:\build\Qlik_Sense_Desktop_feb_2023_setup.exe 