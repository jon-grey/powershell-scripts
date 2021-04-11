

Function Setup-Module ($MyModule)
{
    if(-not (Get-Module -ListAvailable -Name $MyModule)) {
    Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
    Install-Module -Name $MyModule -Confirm:$False
    Import-Module -name $MyModule
    }
}
