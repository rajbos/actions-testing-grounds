FROM ghcr.io/rajbos/actions-marketplace/powershell:7

COPY /Src/PowerShell/*.ps1 /src/

ADD /Src/PowerShell/entrypoint.ps1 /entrypoint.ps1
ENTRYPOINT ["pwsh", "/entrypoint.ps1"]
SHELL ["pwsh"]