param (
    [string] $variable1
)
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

    Write-Host "Listing parameters: [$variable1], [$variable2]"
}

# call main script:
main
# return the container with the last exit code:
Write-Host "Returning with last exit code: $LASTEXITCODE"
exit $LASTEXITCODE