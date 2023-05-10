#Requires -Version 7

param(
    [Parameter(Mandatory=$true)] $FtpUrl,
    [Parameter(Mandatory=$true)] $UserName,
    [Parameter(Mandatory=$true)] $Password,
    [Parameter(Mandatory=$true)] $Branch,
    [Parameter(Mandatory=$true)] $DocsRoot
)

$ErrorActionPreference = "Stop"
if (!(Get-InstalledModule "WinSCP" -EA 0))
{
    Install-Module WinSCP -Force
}

# Playnite repo still uses "master"
#if ($Branch -eq "main")
#{
#   $Branch = "master"
#}

$module = Get-InstalledModule "WinSCP"
Add-Type -Path (Join-Path $module.AdditionalMetadata.InstalledLocation "lib\netstandard2.0\WinSCPnet.dll")
 
# Setup session options
$sessionOptions = New-Object WinSCP.SessionOptions -Property @{
    Protocol = [WinSCP.Protocol]::Ftp
    HostName = $FtpUrl
    UserName = $UserName
    Password = $Password
}

$session = New-Object WinSCP.Session
$session.ExecutablePath = (Join-Path $module.AdditionalMetadata.InstalledLocation "bin\WinSCP.exe")
$session.Open($sessionOptions)
$session.Dispose()


return
$pw = ConvertTo-SecureString $Password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ($UserName, $pw)
$sessionOption = New-WinSCPSessionOption -HostName $FtpUrl -Protocol Ftp -Credential $credential
New-WinSCPSession -SessionOption $sessionOption -Verbose

$branchPath = $DocsRoot + $Branch
if (Test-WinSCPPath $branchPath)
{
    Remove-WinSCPItem -Path $branchPath -Confirm:$false
}

$docsPath = ".\docs\_site"
Send-WinSCPItem $docsPath $branchPath

Remove-WinSCPSession