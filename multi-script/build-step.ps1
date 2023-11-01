param(
    [System.IO.DirectoryInfo]$Path='C:\build'
)

Set-StrictMode -Version 3

Start-Transcript -Path "C:\test-ps1\logs\build-$((Get-Date).ToString('yyyy-mmm-dd-hh-mm-ss')).log"

Write-Information "Starting script............" -InformationAction Continue
$attributes= Get-GceMetaData -Path "instance/attributes"
$DEST='C:\ps-test\multi-ps'

Write-Information "Starting script............" -InformationAction Continue

if ( -not 'Bucket' -in $attributes){
    Throw "GCE instance attribute bucket is empty"
}

Write-Host($attributes)



$Bucket= Get-GceMetaData -Path "instance/attributes/Bucket"

if(-not (Test-Path $Path)){
    Write-Information "Creating directory at $Path"
    New-Item -Path $Path -ItemType Directory
}


gsutil rsync -r gs://my-poc-dilip $DEST | %{Write-Progress -Activity "Syncying files from bucket" -Status $_}

#Write-Host($Bucket)



. .\common.ps1
Loadparameters

.\Parameters.ps1

Write-Host $test_var

$projectId = Get-GceMetadata -Path 'project/project-id'
Write-Host "Project id: $projectId"

$token = Get-GceMetadata -Path  'instance/service-accounts/default/token' | ConvertFrom-Json

$accessToken= $token.access_token

#Write-Host "TOKEN: $token"

#Write-Host "ACCESS TOKEN: $accessToken"


Write-Information "Done....."

Stop-Transcript