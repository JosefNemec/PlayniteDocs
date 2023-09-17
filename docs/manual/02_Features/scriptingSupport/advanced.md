## Advanced
---------------------

### Startup script variables

Playnite provides some variables that you can use in scripts.

| Variable      | Description                                                                    |
|:------------- |:------------------------------------------------------------------------------ |
| $PlayniteApi  | Instance of [Playnite API](xref:Playnite.SDK.IPlayniteAPI).                    |
| $Game         | [Game](xref:Playnite.SDK.Models.Game) library object for current game session. |
| $IsPlayAction | Indicates whether an action was started as play action.                        |

Following variables are only available to [emulator startup scripts](../emulationSupport/advanced.md#startup-script).

| Variable         | Description                                                                             |
|:---------------- |:--------------------------------------------------------------------------------------- |
| $Emulator        | [Emulator](xref:Playnite.SDK.Models.Emulator) selected to launch a game.                |
| $EmulatorProfile | [Emulator profile](xref:Playnite.SDK.Models.EmulatorProfile) selected to launch a game. |
| $RomPath         | ROM path selected to launch.                                                            |

Script variables
---------------------

Playnite provides some built-in global variables that scripts can use to get more information about current game session.

| Variable          | Description                                                                                         |
|:----------------- |:--------------------------------------------------------------------------------------------------- |
| $PlayniteApi      | Instance of [Playnite API](xref:Playnite.SDK.IPlayniteAPI).                                         |
| $Game             | [Game](xref:Playnite.SDK.Models.Game) library object for current game session.                      |
| $SourceAction     | Custom [game action](xref:Playnite.SDK.Models.GameAction) used to start a game.                     |
| $SelectedRomFile  | ROM file selected when running a game with multiple ROMs assigned.                                  |
| $StartedProcessId | Process ID of original started process. Might not be available depending on how a game was started. |

Emulator scripts have additional variables provided:

| Variable         | Description                                                                             |
|:---------------- |:--------------------------------------------------------------------------------------- |
| $Emulator        | [Emulator](xref:Playnite.SDK.Models.Emulator) selected to launch a game.                |
| $EmulatorProfile | [Emulator profile](xref:Playnite.SDK.Models.EmulatorProfile) selected to launch a game. |

Cancelling game startup
---------------------

Game startup is automatically cancelled if starting script fails with an exception. If you want to manually cancel game startup, set `$StartingArgs.CancelStartup` to `$true`.

Startup script
---------------------

If you need more complex startup and game tracking procedure other then just starting an executable, or default session tracking doesn't work for a specific game, then you can start and manage game session using a script. This is currently available to emulators (custom profiles) and games.

The script should keep running while you want Playnite to detect the game as running. Once the script finishes with execution, Playnite considers the game to stop running and will record game session length based on how long the script was running (adding that time to overall game play time).

> [!NOTE]
> Startup scripts run in a separate script runtime and thread compared to other game scripts. Therefore you can't share data with other game/global scripts and you can't directly call any code that must be run on main thread (most UI things)!
> 
> Breaking exceptions from startup script are not propagated to UI via error message (like for other game/global scripts) and are only logged into Playnite's log file.

### Startup script example

```powershell
$process = [System.Diagnostics.Process]::Start("game.exe")
$process.WaitForExit()
$process.Dispose()
```

### Reacting to tracking cancellation

You can use `$CancelToken.IsCancellationRequested` to detect if user cancelled game session manually from Playnite. When cancellation is initiated, Playnite sets mentioned property to `true` and gives the script 10 seconds to exit gracefully. If the script fails to exit in that time, script's runtime is killed.

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