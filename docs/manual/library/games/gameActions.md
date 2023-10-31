Game actions
=====================

Game actions can be used either to start a game or to launch additional executables not related to the game startup, for example, configuration and mod utilities.

Only actions marked as a "Play" action are used to start a game while others will remain available to launch only through the game menu. In cases where more than one "Play" action is available, Playnite will present a selection dialog during the game's startup to allow you to specify which action to use for launching the game.

The `Include library integration play actions` option specifies whether the integration plugin that imported a specific game should be asked to handle the game startup when it is being launched.

Play actions can be also provided by plugins, see the [game actions](../../../tutorials/extensions/gameActions.md) plugin page for more details.

Bulk editing
---------------------

When you edit multiple games simultaneously, Playnite will not display the currently assigned actions from the selected games. Any changes made while in bulk edit mode will be applied to all the selected games, and all the existing actions will be replaced.

Action properties
---------------------

| Property          | Description                                                                                                                                                                                        |
| ----------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Play action       | If enabled, Playnite will treat this action as a Play action. Offering as an option when starting a game (if more than one option is available and counting play time from a started by this action. |
| Type              | Action startup type.                                                                                                                                                                               |
| Tracking mode     | Only available for Play actions (`File` and `URL` types) since it affects how [play time detection](#tracking-mode) works.                                                                         |
| Path              | File path (or URL) to start.                                                                                                                                                                       |
| Arguments         | Startup arguments passed to an executable during startup.                                                                                                                                          |
| Working directory | Working directory set to an executable during startup.                                                                                                                                             |

### Action types

| Property | Description                                                                                                   |
| -------- | ------------------------------------------------------------------------------------------------------------- |
| File     | Path is executed as a standard executable file.                                                               |
| URL      | Path is executed as an URL address.                                                                           |
| Emulator | Action is started using an emulator configuration.                                                               |
| Script   | Script used to start an application. See [game scripts](../../features/scriptingSupport/startupScript.md) page for more details. |

> [!WARNING]
> Non-play actions that use the `Script` startup method will run synchronously in the main thead. This means that they will block Playnite's UI until the script is finished running. Therefore make sure you don't use any long running operations in your startup script.

### Emulator settings

| Property         | Description                                                                                                     |
| ---------------- | --------------------------------------------------------------------------------------------------------------- |
| Emulator         | Emulator to launch.                                                                                             |
| Emulator profile | Emulator profile to use to launch a game. Selecting `Choose on startup` will give an option to select a profile |

### Tracking mode

| Property         | Description                                                                                                          |
| ---------------- | -------------------------------------------------------------------------------------------------------------------- |
| Default          | Playnite will try to detect and use the best tracking method automatically.                                          |
| Process          | Playnite will track a game as running as long as original process or any of its child processes are running.         |
| Original process | Playnite will track a game as running as long as the originally started process is running, child processes are ignored. |
| Folder           | Playnite will track a game as running as long as some process from the `Tracking path` folder is running.                |

Troubleshooting
---------------------

In rare cases (depending on an application being started) the application won't start properly unless `Working directory` is not set to an application's installation directory. If this happens, you need to specify a `Working directory` manually to a directory that makes the selected application run properly. This is not an issue in Playnite, it's an issue in the started application.

### Using "Choose on startup" option doesn't show all emulators/profiles

This option uses the platform field to select compatible emulators and profiles. If certain emulators or profiles are not shown on startup, make sure that you have assigned the same platforms to a game and the specific profiles.