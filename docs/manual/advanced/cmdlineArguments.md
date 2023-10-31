Application arguments
---------------------

Playnite executable accepts the following arguments from command line.

| Argument            | Description                                                                                                                                              |
| ------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `--start <gameId>`    | Starts the game with the specified library ID.                                                                                                                   |
| `--nolibupdate`       | Skips library update on startup.                                                                                                                         |
| `--startdesktop`      | Forces the application to start in Desktop mode. If there's an existing instance already running in Fullscreen mode, it will be switched to Desktop mode.    |
| `--startfullscreen`   | Forces the application to start in Fullscreen mode. If there's an existing instance already running in Desktop mode, it will be switched to Fullscreen mode. |
| `--forcesoftrender`   | Forces the application to use software render, disabling GPU acceleration.                                                                                   |
| `--forcedefaulttheme` | Forces the application to use the default theme.                                                                                                                 |
| `--hidesplashscreen`  | Won't show startup splash screen.                                                                                                                        |
| `--clearwebcache`     | Clears web (CEF) cache on startup.                                                                                                                       |
| `--shutdown`          | Shuts down any existing instances of Playnite.                                                                                                           |
| `--safestartup`       | Start playnite in Safe Mode, only loading built-in extensions and using default theme.                                                                   |
| `--backup`            | [Backup Playnite data](../library/backup.md)                                                                                                                        |
| `--restorebackup`     | [Restore Playnite data from backup](../library/backup.md)                                                                                                           |

URI commands
---------------------

| Command  | Description                                                                                                  | Example                                                                |
| -------- | ------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------- |
| `start`    | Start a game.                                                                                                | `playnite://playnite/start/64f78cd1-0b00-4271-a9e1-89abc55f66cc`       |
| `showgame` | Show game details for a specific game.                                                                         | `playnite://playnite/showgame/64f78cd1-0b00-4271-a9e1-89abc55f66cc`    |
| `search`   | Open global search. Can specify default search keyword. Multi word search terms have to be properly encoded. | `playnite://playnite/search` or `playnite://playnite/search/quake%203` |

Extensions can register custom commands via [Playnite SDK](../../tutorials/extensions/uriSupport.md).