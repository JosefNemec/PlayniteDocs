## Adding Emulated Games

---------------------

Once you've configured your emulators and their respective profiles in the previous step, you can start adding emulated games to your Playnite library.

This section will guide you through configuring a scanner that Playnite will use to automatically add these games to your library.

> [!NOTE]
> How games are imported is controller by an emulator and its selected profile. Built-in emulators/profiles use several different method how to detect a game so it's important that your emulators configuration is correct!

> [!NOTE]
> [Custom profiles](addingNewEmulators.md#configuring-a-custom-emulator-profile) primarily matches games by specified file extensions. If you want to increase accuracy of the import, make sure you also assign correct platforms to the profile and that those platforms have [platform specification](../../library/libraryManager.md#platform-specification) assigned to them.

### Auto-scan configurations

---------------------

#### Creating an Auto-Scan configuration

Navigate to `Main menu` > `Library` > `Configure emulators…` on Playnite Desktop Mode to open the Emulators configuration window.

Afterwards, continue with the following:

1. Select the `Auto-scan configurations` tab

2. Click the `Add` button to create a new scan entry

3. Input the `Name` you want for the scanner

4. In `Scan folder`, select the folder where your games are located

5. In `Scan with the emulator`, select the emulator you want to use to scan first and afterwards select a `Profile` used by the emulator that will be used to run these games.

6. Modify any additional configuration you wish to and finally click `Save` to finish.

![Emulation_ScannerConfig](images/Emulation_ScannerConfig.jpg)

#### Using an Auto-scan configuration to import emulated games

After creating an Auto-scan configuration, you can start using it to import emulated games using the following methods:

1. **Automatic:** You can start games scan by navigating to `Main menu` > `Update game library` > `Update emulated folders`. This option will automatically add detected games without requiring user input

2. **Automatic during library update:** By default, Playnite will scan for emulated games during library update. This behavior can be changed globally for all scan configurations with the `Scan emulation folders` option in `Settings` > `Updating` or you can configure this option for individual scanners in `Main menu` > `Library` > `Configure emulators` > `Auto-scan configurations`

3. **Manual:** Navigate to `Main menu` > `Add Game` > `Emulated Game` and follow the instructions.

> [!NOTE]
> Playnite by default groups multi-disc games under one game entry. You can alternatively split or merge these via right-click menu after selecting games on import list. Right-click menu also gives you an ability to change platform and region in bulk.

## Tips

---------------------

- Make sure your emulators are correctly configured with their respective BIOS files and settings for the best emulation experience.
- Keep your emulated game ROMs organized in a dedicated directory for easy management and scanning by Playnite.

With Playnite's emulation support, you can enjoy your favorite retro games alongside your modern library, all within a unified gaming platform.
