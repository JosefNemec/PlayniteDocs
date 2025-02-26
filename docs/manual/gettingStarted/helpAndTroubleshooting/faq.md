## Frequently Asked Questions (FAQ)

---------------------

> [!NOTE]
> If you see any path on this page that starts with **%appdata%** or **%localappdata%**, then **copy that path exactly as written** and paste it into your file explorer to navigate to a correct directory. Strings starting and ending with % are environment variables that will be properly converted when you tell your file explorer to navigate there.

## General Questions

### What does Playnite name mean?

Playnite is a combination of `Play` and `Unite`.

### Is Playnite the best game library manager for me, or should I use other software?
It depends on your needs. Playnite is highly customizable, feature rich and supports many platforms, but it depends in your individual needs and priorities. See the [Comparison with Other Software](../comparisonWithOtherSoftware.md) section for more details.

### Is Playnite safe to use?

Its safety largely depends on how the installed library and other types of plugins work and what they do, as they handle various aspects of game integration and other functionality.

When connecting accounts, it primarily relies on the practices implemented by these plugins, such as using official login web forms and storing web session cookies or tokens, similar to how your web browser does when you log in to these services but the specifics will vary from plugin to plugin. For more information about safety when installing and using plugins, refer to [here](../../features/extensionsSupport/faq.md#are-extensions-safe-to-use).

When it comes to your user data, you can rest assured as all information about your gaming library is stored exclusively on your PC. This guarantees that your data remains securely within your control at all times.

### How can I support the project?

To support the Playnite project and contribute to its continued development, you can consider the following options:

**Donations and financial support:**

The Playnite project may accept donations to help cover the costs of development, server hosting, and other expenses. Consider becoming a [Patreon](https://www.patreon.com/playnite) if this is an option for you.

**Spread the Word:**

Share your positive experiences with Playnite on social media, gaming forums, and among your friends. Increasing the user base and community engagement can benefit the project.

**Contribute Code:**

If you have programming skills, you can contribute to the project by submitting code improvements, bug fixes, or new features. Playnite is an open-source project hosted on GitHub, so you can fork the repository, make changes, and submit pull requests.

**Bug Reporting:**

Help improve Playnite by reporting any bugs, issues, or glitches you encounter while using the software. Detailed bug reports with steps to reproduce the problem can be invaluable to the developers.

**Translate:**

Playnite is available in multiple languages, and you can contribute by translating the software into your native language or improving existing translations on [Crowdin](https://crowdin.com/project/playnite).

**Support Extensions:**

If you're a developer, consider creating or maintaining extensions for Playnite. Extensions can enhance Playnite's functionality and provide more options to users.

**Participate in Discussions:**

Engage in discussions related to Playnite. Provide help and support to other users, answer questions, and share your knowledge.

**Documentation:**

Contribute to improving the Playnite documentation, including user guides, FAQs, and tutorials. Clear and helpful documentation benefits all users

Remember that support comes in various forms, and even spreading the word about Playnite or helping newcomers can contribute to the growth and success of the project. 

### Why is Playnite so cool!!?

That's just how it is. 😎

### Will there be Linux or macOS version?

Not in near future, mainly for technical reasons. More information [here](https://github.com/JosefNemec/Playnite/issues/59).

### Does Playnite replace game clients?

No. While this will vary depending on the specific library plugin in charge of handling the service library, generally Playnite does not replace game clients like Steam, Epic Games Store, GOG, or others. Playnite is designed to complement these game clients by providing a unified library and interface for all your games, regardless of where they are purchased or installed.

While Playnite provides a robust and feature-rich game library management solution, it does not replace the need for the original game clients.

You may still require these clients to access platform-specific features like games downloading, installing and uninstalling, multiplayer, friends, or community features offered by the games respective clients.

Playnite works alongside these clients to provide a centralized and organized gaming experience.

### Can I link multiple accounts?

You can't, unless a library integration plugin explicitly supports it (gives you an option to link multiple accounts).

You can however link one account, import games, link a different  account, import games again and you'll end up with a library that  contains games from both accounts.
Playnite never automatically removes  games from the library so linking a different account won't affect games from other accounts in any way.

### Does Playnite support X controller?

See [Controller Support](../playniteFullscreenMode.md#controller-support).

### Where can I find the library folder with all games?

Go to `Settings` menu and check `Database Location` on `Advanced` tab.

By default for installed versions the library is in `%appdata%\Playnite\library` folder and for portable it's just `library` folder inside the application folder.

> [!WARNING]
> Never combine two different library folders from  different Playnite instances. It will generate duplicates in your  library. If you are moving library to another Playnite instance always  completely replace the folder, never just copy one over another!

### Where are cover and background images stored?

All media files are stored in `Database Location` directory together with other game information.

### How do I update Playnite?

Playnite supports auto update feature, you don't have to download and install updates manually. Playnite checks for new version at every  startup and then every 4 hours. You can also manually check if new  version is available by using `Check for Updates` menu option.

### Where are Playnite settings located?

Portable editions have settings stored in `config.json` directly in Playnite's folder. Installed versions store settings in the `%AppData%\Playnite\config.json` file.

### What is Safe Mode?

Safe Mode starts Playnite with all third-party extensions disabled and using only default theme.

To start Safe Mode, you can:
- Navigate to `Main menu` > `Help` > `Restart in Safe Mode`.
- Open the `Safe Mode.bat` file from Playnite's installation directory.
- Use the `--safestartup` [application argument](../../advanced/cmdlineArguments.md) when starting Playnite's executable.

### How do I start additional application(s) before game starts and kill it after game exits?

See [this page](../../features/scriptingSupport/exampleScripts.md#starting-additional-applications-before-game-starts-and-killing-it-after-game-exits).

### How do I unhide game?

Use the "funnel" filter button next to the search field to open filter panel, select `Hidden` filter, right-click on hidden games and choose the `Show in Library` option.

### How can I close a game or emulator with a controller?

Currently Playnite does not offer native functionality for closing games or emulators using a controller.

However, if a game or emulator doesn't have a way to close it via some menu, you can achieve this by using a third-party application that can simulate the `ALT+F4` key combination with a controller.

Here are some examples of applications that can help you accomplish this task:

- [JoyXoff](https://joyxoff.com/en/)
- [AntiMicroX](https://antimicrox.github.io/)
- [Controller Companion](http://controllercompanion.com/)
- [reWASD](https://www.rewasd.com/)

Additionally, the [PlayState](https://playnite.link/addons.html#PlayState) Playnite extension provides limited keyboard simulation functionality for controllers. However, it is recommended to review the extension functionality and settings to prevent unwanted functionality from being added to Playnite when installing it.

### How do I backup Playnite library and move it to another PC?

Playnite 10 introduced built-in options to backup and restore Playnite data accessible from the Library menu.

To manually backup data:

- If using portable version, just move the whole installation folder.
- If using installed version, then you need to move `%appdata%\Playnite` folder, which contains all user information.

Make sure to completely replace the folder on new drive/PC if it  already exists from other installation. Just copying over existing user  data will cause issues!

### How do I convert installed version to portable?

1. Shutdown Playnite
2. Copy content of `%appdata%\Playnite` into Playnite's application folder
3. Delete `unins000.exe` and `unins000.dat` files in this directory.
4. Edit `config.json` with a text editor and change `DatabasePath` property value to `"library"`

### Can I change or hide startup splash screen?

Splash screen image cannot be changed, it can only be hidden on startup using `--hidesplashscreen` [command line argument](../../advanced/cmdlineArguments.md). It currently also can't be hidden when switching application modes.
