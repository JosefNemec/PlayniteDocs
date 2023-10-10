## Adding new emulators
---------------------

To start adding a new emulator, navigate to `Main menu` > `Library` > `Configure emulators…` on Playnite Desktop Mode to open the Emulators configuration window.

![Emulation_MenuOpen](images/Emulation_MenuOpen.jpg)

Playnite has a support for handling and importing of emulated games. The support is implemented in two ways:

### Automatic Emulator Detection (Built-in support)

Playnite features an automatic emulator detection system that can identify [several known emulators](https://github.com/JosefNemec/Playnite/tree/master/source/Playnite/Emulation/Emulators) installed on your system that, with support to automatically configure them. This also includes import of emulated based on libretro game database.

To automatically import an emulator follow these steps:

1. Click `Import` to open the Emulation import wizard window
2. Click `Scan folder` to open a files explorer window, select the folder where your emulator is located and wait for the scan to finish.
3. Verify that the emulators you want to import are being displayed in the list and finally click `Import` to add the emulator.

   ![Emulation_EmulatorImport](images/Emulation_EmulatorImport.jpg)

If your emulator was not found, it means that Playnite doesn't have an automatic configuration for it. Continue to the next section to learn how to manually add the emulator.

> [!NOTE]
> If you find that an emulator is missing and you think that it should be added to built-in supported emulators list, please [open new issue on GitHub](https://github.com/JosefNemec/Playnite/issues/) for it to be added.

### Manual emulator configuration

If Playnite doesn't automatically detect your emulators, or if you prefer manual configuration, you can add emulators manually.

To manually add emulators:

1. Click the `Add` to create a new emulator entry.
2. Enter the emulator information like the emulator `Name` and `Installation Folder`. Also select your emulator in `Emulator specification` if it's available
3. Select `Add` to create an emulator profile. If you selected an `Emulator specification` in the previous steps, automatic configurations will be available to select. If you wish to use your own configuration or there is not any configuration available select `Custom profile` and proceed to the next section

   ![Emulation_ManualEmulatorImport](images/Emulation_ManualEmulatorImport.jpg)

#### Configuring a custom emulator profile

---------------------

After creating a manual **Custom profile** in the previous step, you'll need to create a new emulator and configure its [properties](#emulator-properties).

For this example we'll be using the mGBA emulator:

1. Input a `Name` for the profile and select the `Supported Platform(s)` for the profile. If your platform is not available in the dropwdown, you can add aditional ones in the **Library Manager**, located in `Main menu` > `Library` > `Library Manager…`

2. Select the emulator executable

3. Input the `Arguments`. To know the arguments, refer to the specific emulator documentation online. Looking online, we've found this [documentation](https://emulation.gametechwiki.com/index.php/MGBA):

   ![MgbaCommandLine](images/Emulation_MgbaCommandLine.jpg)

`mgba` refers to the emulator executable. The `options` bracket is optional but we'll use the `-f` graphics option to start the emulator in fullscreen and finally `file` refers to the game file path.

The full `Arguments` line we'll end with is `-f "{ImagePath}"`.

> [!NOTE]
> The `{ImagePath}` part is a game variable that points to the game image/rom path. Generally most emulators accept this argument but it will depend in the specific emulator. For a detailed explanation of game variables during game start refer to [Game Variables](../../advanced/gameVariables.md)

4. Configure the `Supported File Types` available in the documentation. Alternatively if you didn't find any, it is suggested to see what file types are available in the file selection dialog in the emulator itself.

   ![Emulation_MgbaFileSelection](images/Emulation_MgbaFileSelection.jpg)

In this example, we end with `gba,zip,7z,elf,agb,mb,rom,bin`

> [!WARNING]
> The supported file types list must be separated with a comma (,), not contain the period (.) or spaces!

5. After finishing, click `Save` to save the changes.

   ![Emulation_CustomProfileConfig](images/Emulation_CustomProfileConfig.jpg)

> [!NOTE]
> A lot of arcade emulators require ROM file to be passed via command line argument as a file name without complete path or file name without an extension. In that case you can use `{ImageName}` or `{ImageNameNoExt}` (See [game variables](../../advanced/gameVariables.md)), instead of {ImagePath} which contains full path to a ROM file.


## Emulators properties
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

If your profile contains `Startup script` code, Playnite will use that instead of general profile settings to launch an emulator. Emulator startup script works in the same way as [game startup scripts](../scriptingSupport/startupScript.md). The only difference is that emulator script has some additional variables available:

| Variable         | Description                                                                             |
|:---------------- |:--------------------------------------------------------------------------------------- |
| `$Emulator`        | [Emulator](xref:Playnite.SDK.Models.Emulator) selected to launch a game.                |
| `$EmulatorProfile` | [Emulator profile](xref:Playnite.SDK.Models.EmulatorProfile) selected to launch a game. |
| `$RomPath`         | ROM path selected to launch.                                                            |
| `$PlayniteApi`     | Instance of [Playnite API](xref:Playnite.SDK.IPlayniteAPI).                             |
| `$Game`            | [Game](xref:Playnite.SDK.Models.Game) library object for current game session.          |
