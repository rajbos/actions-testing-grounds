function Get-LocationInfo {
    Write-Host "Where are we? [$pwd]"

    ForEach ($file in Get-ChildItem) {
        Write-Host "- $($file.Name)"
    }
}

function main {
    Write-Host "Version info: $([string]$PSVersionTable["PSVersion"])"
    Write-Host "Hello World from scriptroot: $PSScriptRoot" 
    Get-LocationInfo

    Set-Location ~\
    Get-LocationInfo

    Set-Location $PSScriptRoot
    Get-LocationInfo

    Set-Location "does not exists"
}

# call main script:
main
# return the container with the last exit code:
exit $?