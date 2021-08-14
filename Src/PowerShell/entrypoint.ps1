Write-Host $PSVersion

Write-Host "Hello World from scriptroot: $PSScriptRoot" 
Write-Host "Where are we? [$pwd]"

ForEach ($file in Get-ChildItem) {
    Write-Host "- $($file.Name)"
}


Set-Location .\src\
Write-Host "Files in \src\:"
ForEach ($file in Get-ChildItem) {
    Write-Host "- $($file.Name)"
}
