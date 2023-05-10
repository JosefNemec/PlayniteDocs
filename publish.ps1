#Requires -Version 7

param(
    $FtpUrl = $env:FTP_DOC_HOST,
    $UserName = $env:FTP_DOC_USERNAME,
    $Password = $env:FTP_DOC_PASSWORD,
    $Branch = $env:GITHUB_REF_NAME,
    $DocsRoot = "www/docs/"
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

$pw = ConvertTo-SecureString $Password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ($UserName, $pw)
$sessionOption = New-WinSCPSessionOption -HostName $FtpUrl -Protocol Sftp -Credential $credential
New-WinSCPSession -SessionOption $sessionOption | Out-Null

$branchPath = $DocsRoot + $Branch
if (Test-WinSCPPath $branchPath)
{
    Remove-WinSCPItem -Path $branchPath -Confirm:$false
}

$docsPath = ".\docs\_site"
Send-WinSCPItem $docsPath $branchPath

Remove-WinSCPSession