New-Item -Path 'c:\build' -ItemType Directory
 #New-Item -Path 'c:\build\test.txt' -ItemType File
gcloud --version
gsutil rsync -r "gs://my-poc-dilip/" "C:\build"

$insatll_status=Start-Process `
        -FilePath C:\build\Qlik_Sense_Desktop_feb_2023_setup.exe 