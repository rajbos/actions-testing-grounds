FROM ghcr.io/rajbos/actions-marketplace/powershell:7

COPY /*.ps1 /src/

ADD entrypoint.ps1 /entrypoint.ps1
ENTRYPOINT ["pwsh", "/entrypoint.ps1"]
SHELL ["pwsh"]