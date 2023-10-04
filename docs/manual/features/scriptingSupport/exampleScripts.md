## Example scripts
---------------------

Below are some examples of useful scripts you can use:

### Starting additional application(s) before game starts and killing it after game exits

- Set first script to start your application using [Start-Process](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/start-process?view=powershell-5.1) cmdlet to the

```powershell
Start-Process -FilePath "c:\somepath\someapp.exe" -ArgumentList "-some arguments"
```

If you want to start application minimized and application doesn't have native support for it then add `-WindowStyle` argument to the end of the line.

> [!WARNING]
> Some applications won't work properly (or even start) when started using working directory outside of their application directory. In that case you need to use `-WorkingDirectory` parameter and specify working directory manually.

- Set second script to kill the application using [Stop-Process](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-process?view=powershell-5.1) cmdlet

```powershell
Stop-Process -Name "someapp"
```

- If an application requires elevated rights to start, then you need to use different method to stop its running process.

```powershell
(Get-WmiObject -Class Win32_Process -Filter "name = 'someapp.exe'").Terminate()
```

> [!NOTE]
> To identify the name of the process that should be used in your scripts to stop an application, you can follow these steps: Open Windows Task Manager by pressing Ctrl+Shift+Esc or by right-clicking on the taskbar and selecting "Task Manager." Then in Task Manager, right-click on any column header and choose the "Process name" option to enable it.

### Starting application only if it's not running

Detecting if an application is running can be done by using the [Get-Process](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-process?view=powershell-7.3) cmdlet and then combined with the explanation in the previous example script

```powershell
if (!(Get-Process -Name "someapp" -EA 0))
{
    # Process is not running. Combine with previous section
}
else
{
    # Process is running. Combine with previous section
}
```

### Simulate key presses

It's possible to do with [SendKeys class](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.sendkeys?view=windowsdesktop-6.0#remarks).

```powershell
# Load the necessary assembly
Add-Type -AssemblyName System.Windows.Forms

# List of keys codes available at https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.sendkeys?view=windowsdesktop-6.0#remarks
# Simulate F2 key press.
[System.Windows.Forms.SendKeys]::SendWait('{F2}')

# Simulate Ctrl+D Combo key press.
[System.Windows.Forms.SendKeys]::SendWait('^(D)')

# Simulate Ctrl+Shift+Escape Combo key press.
[System.Windows.Forms.SendKeys]::SendWait('^(+{ESC})')
```

### Executing actions depending of game characteristics

It's possible to only execute scripts on games that that have certain characteristics, for example:

```powershell
if ($game.Features.Name -contains "Some feature name")
{
    # Game has the feature!
}

if ($game.Source.Name -eq "Steam")
{
    # Game is a Steam game!
}
```

### Execute actions depending on active Playnite mode

If you want to adjust script's behavior based on Playnite's operation mode (Desktop vs Fullscreen), you can get that information from [API object](xref:Playnite.SDK.IPlayniteAPI):

```powershell
if ($PlayniteApi.ApplicationInfo.Mode -eq "Desktop")
{
    # Execute when running in Desktop mode
}
else
{
    # Execute when running in Fullscreen mode
}
```
