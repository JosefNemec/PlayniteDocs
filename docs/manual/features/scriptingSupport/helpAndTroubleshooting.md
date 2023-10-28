## Help and Troubleshooting

---------------------

### How can I do X with scripts?

You can accomplish various tasks using PowerShell scripts in Playnite. However, due to the diverse range of tasks you can perform and the complexity of scripting, we recommend exploring online resources and tutorials to learn PowerShell. Websites, forums, and documentation related to PowerShell can be valuable sources of information to help you achieve your specific task.

A simple web search or visiting the official PowerShell documentation can provide you with detailed guidance and examples for your needs.

### Exceptions related to directory not being found

Paths (and strings in general) in various places in PowerShell are handled not as literal strings, but as strings with wildcard patterns. This has the unfortunate issue if a specific command doesn't allow you to pass a literal string with a specific argument (for example `-LiteralPath`) or has an option to disable wildcard parsing.

This can cause issues if the game's installation path contains wildcard pattern characters. For example, a game installed in `d:\[test] game name\` will cause issues to `Start-Process` cmdlet, due to the `[` and `]` pattern characters. This is because Playnite sets the script runtime's working directory to the game's installation path and `Start-Process` tries to parse it before launching a program.

The solution is to either use arguments with literal paths or use a different cmdlet or .NET classes directly. For example, to start a process:

```powershell
# Instead of:
Start-Process "game.exe"

# Call .NET class directly:
[System.Diagnostics.Process]::Start("game.exe")
```

> [!NOTE]
> This issue has been fixed in newer versions of PowerShell, but since Playnite has to use older version (5.1) until we switch to newer .NET runtime, you may encounter this issue.