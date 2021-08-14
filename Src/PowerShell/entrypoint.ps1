function Get-LocationInfo {
    Write-Host "Where are we? [$pwd]"

    ForEach ($file in Get-ChildItem) {
        Write-Host "- $($file.Name)"
    }
}

Write-Host "Version info: $([string]$PSVersionTable["PSVersion"])"
Write-Host "Hello World from scriptroot: $PSScriptRoot" 
Get-LocationInfo

Set-Location ~\
Get-LocationInfo

Set-Location $PSScriptRoot
Get-LocationInfo