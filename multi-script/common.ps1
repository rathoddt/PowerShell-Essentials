Write-Host "File synced from Bucket: my-poc-dilip"


$projectId = Get-GceMetadata -Path 'project/project-id'

Write-Host "Project id: $projectId"

$token = Get-GceMetadata -Path  'instance/service-accounts/default/token' | ConvertFrom-Json

$accessToken= $token.access_token

Write-Host "TOKEN: $token"

Write-Host "ACCESS TOKEN: $accessToken"
