#Requires -Version 7

param(
    [Parameter(Mandatory=$true)] $FtpHost,
    [Parameter(Mandatory=$true)] $UserName,
    [Parameter(Mandatory=$true)] $Password,
    [Parameter(Mandatory=$true)] $Branch,
    [Parameter(Mandatory=$true)] $FtpRootDir
)

$ErrorActionPreference = "Stop"
if (!(Get-InstalledModule "WinSCP" -EA 0))
{
    Install-Module WinSCP -Force
}

# Playnite repo still uses "master"
if ($Branch -eq "main")
{
   $Branch = "master"
}

$pw = ConvertTo-SecureString $Password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ($UserName, $pw)
$sessionOption = New-WinSCPSessionOption -HostName $FtpHost -Protocol Ftp -Credential $credential
New-WinSCPSession -SessionOption $sessionOption | Out-Null

$branchPath = $FtpRootDir + $Branch
if (Test-WinSCPPath $branchPath)
{
    Remove-WinSCPItem $branchPath -Confirm:$false
}

Send-WinSCPItem ".\docs\_site" $branchPath
Remove-WinSCPSession