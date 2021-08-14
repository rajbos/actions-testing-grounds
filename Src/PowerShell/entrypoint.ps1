Write-Host $PSVersion

Write-Host "Hello World from scriptroot: $PSScriptRoot" 

Set-Location .\src\
Write-Host "Files in \src\:"
ForEach ($file in Get-ChildItem) {
    Write-Host "- $($file.Name)"
}