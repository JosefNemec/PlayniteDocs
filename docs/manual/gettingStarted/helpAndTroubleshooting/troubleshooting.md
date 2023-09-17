## Troubleshooting
---------------------

### General download issues

Usually caused by firewall blocking Playnite installer (check firewall settings) or by DNS functionality being broken on ISP's side. For the latter, switch to using CloudFlare's or Google's DNS:

https://developers.cloudflare.com/1.1.1.1/setup/windows/

https://developers.google.com/speed/public-dns/docs/using#windows

### Can't install into specific folder

Happens if the installer doesn't have permissions to write to selected destination. Use different location if that happens.

### Download fails

Make sure that your Firewall or Anti-malware software is not blocking the installer process.

### General failure

In case of general failure during installation, please let us know by [opening new bug report](https://github.com/JosefNemec/Playnite/issues/new/choose) and use offline installer until the issue is fixed.

### Offline installers

Offline installers can be downloaded from [releases page](https://github.com/JosefNemec/Playnite/releases/latest). Use exe file for standard installation and zip for portable one. Please note that offline installer is not digitally signed and your AV or browser may report that the file is "potentially dangerous", which is not true.

### I'm getting warning about elevated privileges

Playnite will show warning if it detects itself running with elevated privileges. We show this warning because these privileges are inherited to all installed extensions and to everything you subsequently start  from Playnite (all games and apps).

Playnite itself **doesn't** require elevated privileges to function properly so it's an unnecessary security risk to run it that way.

You may get this dialog in several cases, some examples include:

- If Playnite is launched as admin, either manually or via compatibility flag.
- Application that's starting Playnite is already running with elevated privileges.
- You have UAC completely disabled in User Account Control Windows settings.
- You installed Playnite using unsupported method that forces it to  run elevated. For example people installing using Chocolatey reported this issue.

### How do I backup Playnite library and move it to another PC?

Playnite 10 introduced built-in options to backup and restore Playnite data accessible from the Library menu.

To manually backup data:

- If using portable version, just move the whole installation folder.
- If using installed version, then you need to move `%appdata%\Playnite` folder, which contains all user information.

Make sure to completely replace the folder on new drive/PC if it  already exists from other installation. Just copying over existing user  data will cause issues!

### My games are gone or missing

If your games are missing, consider the following:

1. **Filtered**: Does it say "**Filter enabled**" in the top bar? If so, open the Filter Panel by clicking that button and click the `Clear filters` text at the top of the panel to remove any filters that may be hiding your games.
2. **Hidden**: If you still can't see your games, check if the game is hidden by enabling the `Hidden` checkbox in the same panel.

Another easy way to find if a game is in your library is by searching for your game using **Playnite's keyboard launcher**. For more information, refer to [here](../../features/keyboardLauncher.md).

### My games are not importing

1. Check that your library plugin is configured and authenticated correctly via `Main menu` > `Add-ons…` > `Extension settings` > `Libraries`. Make sure especially that uninstalled games are set to import if that setting is available
2. Make sure that you're logged into the right account with the library plugin
3. Check if the game is present in `Main menu` > `Settings` > `Import exclusion list`
4. Check that you don't have a filter enabled (via the filter panel) as explained in the previous section which would prevent games from being shown.

### How do I convert installed version to portable?

1. Shutdown Playnite
2. Copy content of `%appdata%\Playnite` into Playnite's application folder
3. Delete `unins000.exe` and `unins000.dat` files in this directory.
4. Edit `config.json` with a text editor and change `DatabasePath` property value to `"library"`