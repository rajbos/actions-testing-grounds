Write-Host $PSVersion

Write-Host "Hello World"

#Set-Location .\Src\

Write-Host "Files in \Src\:"
ForEach ($file in Get-ChildItem) {
    Write-Host "- $($file.Name)"
}