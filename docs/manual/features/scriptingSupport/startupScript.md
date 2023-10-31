Startup script
---------------------

If you need a more complex startup and game tracking procedure other than just starting an executable, or the default session tracking doesn't work for a specific game, then you can start and manage the game session using a script. This is currently available to games and emulators using custom profiles.

The script should keep running while you want Playnite to detect the game as running. Once the script finishes executing, Playnite will consider that the game has stopped running and will record game session length based on how long the script was running and will add that time to the overall game play time).

> [!NOTE]
> Startup scripts run in a separate script runtime and thread compared to other game scripts. Therefore you can't share data with other game/global scripts and you can't directly call any code that must be run on main thread (most UI things)!
> 
> Breaking exceptions from the startup script are not propagated to UI with an error message like for other game/global scripts and are only logged into Playnite's log file.

### Startup script variables

Playnite provides some variables that you can use in scripts.

| Variable      | Description                                                                    |
|:------------- |:------------------------------------------------------------------------------ |
| `$PlayniteApi`  | Instance of [Playnite API](xref:Playnite.SDK.IPlayniteAPI).                    |
| `$Game`         | [Game](xref:Playnite.SDK.Models.Game) library object for the current game session. |
| `$IsPlayAction` | Indicates whether an action was started as a play action.                        |

### Startup script example

```powershell
$process = [System.Diagnostics.Process]::Start("game.exe")
$process.WaitForExit()
$process.Dispose()
```

### Reacting to tracking cancellation

You can use `$CancelToken.IsCancellationRequested` to determine if the user has manually canceled a game session from Playnite. When a cancellation is initiated, Playnite sets this property to `true` and allows the script 10 seconds to exit gracefully. If the script fails to exit within that time frame, the script's runtime is terminated.

```powershell
# WaitForExit() is synchronous check so it can't be used if you want to support session cancellation
$process = [System.Diagnostics.Process]::Start("game.exe")
while ($true)
{
    # Check if user cancelled game session
    if ($CancelToken.IsCancellationRequested)
    {
        break
    }

    # Check if process is still running
    if (!(Get-Process -Name "game" -EA 0))
    {
        break
    }

    # Sleep for a while to not waste CPU
    Start-Sleep -s 1
}

$process.Dispose()
```