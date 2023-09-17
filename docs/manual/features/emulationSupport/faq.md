## Troubleshooting

---------------------

If you encounter any issue when using built-in emulator configurations/profiles, please [open new issue on GitHub](https://github.com/JosefNemec/Playnite/issues/) to let us know and we will fix it.

### Game runs properly when launched manually from an emulator but not from Playnite

Playnite uses [command line arguments](https://www.bleepingcomputer.com/tutorials/understanding-command-line-arguments-and-how-to-use-them/) to tell specific emulator what game to start. But since some emulators can behave differently when a game is launched via command line compared to launched from emulator's UI, you can see games behaving differently when launched from Playnite.

This can be an issue in either Playnite or in an emulator:

- In case of an issue in Playnite, it means that Playnite is not passing correct arguments to an emulator, which usually happens when an emulator has been updated and requires different set of arguments (usually happens when using built-in emulator profiles) or if you set wrong arguments in your custom profile. You can test this by running an emulator manually from command prompt using the same command line arguments that Playnite uses (which can be seen on emulator config view). If the issue is in built-in emulator profile using wrong arguments, please open [new issue](https://github.com/JosefNemec/Playnite/issues/) in Playnite's repository for the profile to be updated.

- In case of an issue in an emulator, it means that Playnite is passing correct arguments, but there is a bug in the emulator which causes games to run badly when started from command line. The only solution for this is to contact emulator's developers and ask them to fix the issue in the emulator itself.

### Emulator doesn't start

Usually occurs when using custom profile if executable path is not properly configured. Make sure that problematic profile points to an existing file.

### Emulator is not being imported

Playnite either doesn't have a profile for the emulator or the emulator has been updated in a way that prevents Playnite from detect it. In both case, please report an issue on GitHub

### Emulator starts, but game is not launched

This is usually caused by wrongly configured profile `Arguments` that are passed to the emulator. Make sure that arguments are configured according to what selected emulator supports (by checking its documentation).

### Game ROMs are not detected

When using custom emulator configurations, Playnite uses `Supported File Types` profile property to scan files ROM files. Make sure you have correct extensions specified.