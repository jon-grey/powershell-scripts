Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

echo "Location $(Get-Location)"

. ./Set-PsEnv.ps1
. ./Set-IpAddressOctet4.ps1
. ./Setup-Module.ps1
. ./Pause.ps1
