#Requires -Version 7

param(
    [Parameter(Mandatory=$true)] $ScpHost,
    [Parameter(Mandatory=$true)] $UserName,
    [Parameter(Mandatory=$true)] $Password,
    [Parameter(Mandatory=$true)] $Fingerprint,
    [Parameter(Mandatory=$true)] $Branch,
    [Parameter(Mandatory=$true)] $RootDir
)

$global:ErrorActionPreference = "Stop"
if (!(Get-InstalledModule "WinSCP" -EA 0))
{
    Install-Module WinSCP -Force
}

$pw = ConvertTo-SecureString $Password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ($UserName, $pw)
$sessionOption = New-WinSCPSessionOption -HostName $ScpHost -Protocol Scp -Credential $credential -SshHostKeyFingerprint $Fingerprint
New-WinSCPSession -SessionOption $sessionOption | Out-Null

$RootDir = $RootDir.TrimEnd('/') + '/'
$branchPath = $RootDir + $Branch
if (Test-WinSCPPath $branchPath)
{
    Remove-WinSCPItem $branchPath -Confirm:$false
}

New-WinSCPItem $branchPath -ItemType Directory
Send-WinSCPItem ".\docs\_site\*" $branchPath

# main branch should be also in root in case there are still some old links without branch name
if ($Branch -eq "main")
{
    Send-WinSCPItem ".\docs\_site\*" $RootDir
}

Remove-WinSCPSession
