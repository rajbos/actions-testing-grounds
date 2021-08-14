Write-Host $PSVersion

Write-Host "Hello World"

Set-Location .\src\
Write-Host "Scriptroot: $PSScriptRoot" 
Write-Host "Files in \src\:"
ForEach ($file in Get-ChildItem) {
    Write-Host "- $($file.Name)"
}