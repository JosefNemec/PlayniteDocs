## Frequently Asked Questions (FAQ)

---------------------

> [!NOTE]
> If you see any path on this page that starts with **%appdata%** or **%localappdata%**, then **copy that path exactly as written** and paste it into your file explorer to navigate to a correct directory. Strings starting and ending with % are environment variables that will be properly converted when you tell your file explorer to navigate there.

## General Questions

### What does Playnite name mean?

Playnite is a combination of `Play` and `Unite`.

### Is Playnite safe to use?

Rest assured, Playnite prioritizes your privacy and security. It does not store any user information, and there's no need to provide personal details to import installed games. Account connections are typically established via official login web forms, and Playnite only stores web session cookies or tokens, just as your web browser does when you log in to these services.

All information about your gaming library is stored locally on your PC, ensuring your data remains under your control.

### How can I support the project?

To support the Playnite project and contribute to its continued development, you can consider the following options:

- **Donations and financial support:** The Playnite project may accept donations to help cover the costs of development, server hosting, and other expenses. Consider becoming a [Patreon](https://www.patreon.com/playnite) if this is an option for you.

- **Spread the Word:** Share your positive experiences with Playnite on social media, gaming forums, and among your friends. Increasing the user base and community engagement can benefit the project.

- **Contribute Code:** If you have programming skills, you can contribute to the project by submitting code improvements, bug fixes, or new features. Playnite is an open-source project hosted on GitHub, so you can fork the repository, make changes, and submit pull requests.

- **Bug Reporting:** Help improve Playnite by reporting any bugs, issues, or glitches you encounter while using the software. Detailed bug reports with steps to reproduce the problem can be invaluable to the developers.

- **Translate:** Playnite is available in multiple languages, and you can contribute by translating the software into your native language or improving existing translations on [Crowdin](https://crowdin.com/project/playnite).

- **Support Extensions:** If you're a developer, consider creating or maintaining extensions for Playnite. Extensions can enhance Playnite's functionality and provide more options to users.

- **Participate in Discussions:** Engage in discussions related to Playnite. Provide help and support to other users, answer questions, and share your knowledge.

- **Documentation:** Contribute to improving the Playnite documentation, including user guides, FAQs, and tutorials. Clear and helpful documentation benefits all users

Remember that support comes in various forms, and even spreading the word about Playnite or helping newcomers can contribute to the growth and success of the project. 

### Why is Playnite so cool!!?

That's just how it is. 😎

### Will there be Linux or macOS version?

Not in near future, mainly for technical reasons. More information [here](https://github.com/JosefNemec/Playnite/issues/59).

### Does Playnite replace game clients?

No. While this will vary depending on the specific library plugin in charge of handling the service library, generally Playnite does not replace game clients like Steam, Epic Games Store, GOG, or others. Playnite is designed to complement these game clients by providing a unified library and interface for all your games, regardless of where they are purchased or installed.

While Playnite provides a robust and feature-rich game library management solution, it does not replace the need for the original game clients. You may still require these clients to access platform-specific features like games downloading, installing and uninstalling, multiplayer, friends, or community features offered by the games respective clients.

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

Safe Mode starts Playnite with all 3rd party extensions disabled and using only default theme.

You can start safe by opening going to the `Main menu` -> `Help` -> *Restart in Safe* mode or by opening the  `Safe Mode.bat` file from Playnite's installation directory or by using `--safestartup` argument when starting Playnite's executable.

### How do I start additional application(s) before game starts and kill it after game exits?

See [this page](../../02_Features/scriptingSupport/exampleScripts.md#starting-additional-applications-before-game-starts-and-killing-it-after-game-exits).

### How do I unhide game?

Use the "funnel" filter button next to the search field to open filter panel, select `Hidden` filter, right-click on hidden games and choose the `Show in Library` option.

### How do I close (emulated) game with a controller?

Playnite has no built-in functionality for it right now. If a game (or an emulator) doesn't have a way to ecoverxit via some menu, you will need to use a 3rd party app that can simulate `ALT+F4` with a controller button.  Some example of apps you can use include [JoyXoff]([JoyXoff](https://joyxoff.com/en/)), [AntiMicroX](https://antimicrox.github.io/), [Controller Companion](http://controllercompanion.com/) and [reWASD](https://www.rewasd.com/).