#Requires -Version 7

param(
    [Parameter(Mandatory=$true)] $FtpHost,
    [Parameter(Mandatory=$true)] $UserName,
    [Parameter(Mandatory=$true)] $Password,
    [Parameter(Mandatory=$true)] $Branch,
    [Parameter(Mandatory=$true)] $FtpRootDir
)

$global:ErrorActionPreference = "Stop"
if (!(Get-InstalledModule "WinSCP" -EA 0))
{
    Install-Module WinSCP -Force
}

$pw = ConvertTo-SecureString $Password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ($UserName, $pw)
$sessionOption = New-WinSCPSessionOption -HostName $FtpHost -Protocol Ftp -Credential $credential
New-WinSCPSession -SessionOption $sessionOption | Out-Null

$FtpRootDir = $FtpRootDir.TrimEnd('/') + '/'
$branchPath = $FtpRootDir + $Branch + '/'
if (Test-WinSCPPath $branchPath)
{
    Remove-WinSCPItem $branchPath -Confirm:$false
}

Send-WinSCPItem ".\docs\_site\*" $branchPath

# main branch should be also in root in case there are still some old links without branch name
if ($Branch -eq "main")
{
    Start-Process "git" 'branch -r --format "%(refname:lstrip=3)"' -Wait -RedirectStandardOutput ".\gitout.txt"
    $branches = Get-Content ".\gitout.txt"
    Get-WinSCPChildItem $FtpRootDir | Where { $branches -notcontains $_.Name } | ForEach { Remove-WinSCPItem ($FtpRootDir + $_.Name) -Confirm:$false }
    Send-WinSCPItem ".\docs\_site\*" $FtpRootDir
}

Remove-WinSCPSession
