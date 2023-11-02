New-Item -Path 'c:\build' -ItemType Directory
 #New-Item -Path 'c:\build\test.txt' -ItemType File
gcloud --version
gsutil rsync -r "gs://my-poc-dilip/" "C:\build"
