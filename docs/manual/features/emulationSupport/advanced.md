## Advanced

---------------------

### Emulator properties

| Property               | Description                                                                                                         |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------- |
| Installation Folder    | Emulator's installation folder. Can be passed into profile configurations dynamically via `{EmulatorDir}` variable. |
| Emulator specification | Built-in emulator specification used for an emulator. Specifies what built-in profiles can be added to an emulator. |

### Profile properties

Profiles handle how game is started and imported.

| Property             | Description                                                                                                                       |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| Executable           | File path to start an emulator.                                                                                                   |
| Arguments            | Startup arguments passed to an emulator during startup.                                                                           |
| Tracking mode        | Affects how [play time detection](#tracking-mode) works.                                                                          |
| Working Directory    | Working directory set to an emulator during startup.                                                                              |
| Supported file types | File extensions separated by `,`. Used to detect ROM files by this profile. If you need to specify empty extension, use `<none>`. |
| Scripts              | Profiles can execute custom scripts in the same way as [game or global scripts](../scriptingSupport/scriptingSupportOverview.md). |

#### Tracking mode

| Property         | Description                                                                                                                   |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| Default          | Playnite will try to detect and use the best tracking method automatically.                                                   |
| Process          | Playnite will track a game as running as long as original emulator process or any of its child processes are running.         |
| Original process | Playnite will track a game as running as long as originally started emulator process is running, child processes are ignored. |
| Folder           | Playnite will track a game as running as long as some process from `Tracking path` folder is running.                         |

### Startup script

If your profile contains `Startup script` code, Playnite will use that instead of general profile settings to launch an emulator. Emulator startup script works in the same way as [game startup scripts](../scriptingSupport/advanced.md#startup-script). The only difference is that emulator script has some additional variables available:

| Variable         | Description                                                                             |
|:---------------- |:--------------------------------------------------------------------------------------- |
| $Emulator        | [Emulator](xref:Playnite.SDK.Models.Emulator) selected to launch a game.                |
| $EmulatorProfile | [Emulator profile](xref:Playnite.SDK.Models.EmulatorProfile) selected to launch a game. |
| $RomPath         | ROM path selected to launch.                                                            |
| $PlayniteApi     | Instance of [Playnite API](xref:Playnite.SDK.IPlayniteAPI).                             |
| $Game            | [Game](xref:Playnite.SDK.Models.Game) library object for current game session.          |
