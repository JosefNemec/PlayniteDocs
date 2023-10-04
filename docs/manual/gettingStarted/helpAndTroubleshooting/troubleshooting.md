## Troubleshooting
---------------------

### I'm having an issue with my games

Refer to the games FAQ page [here](../../library/games/faq.md).

### Crashing on startup

Startup crashes or freezes usually happen because of these reasons:

1) Bug in Playnite itself. This is indicated by Playnite showing crash dialog with an ability to send crash report. If this happens, send crash report and open new [bug report](https://github.com/JosefNemec/Playnite/issues).

2) Caused by some 3rd party. This is usually:

- extension or theme. In this case Playnite tries to detect if a crash was caused by an add-on and will show appropriate error about it, but this is always not possible. You can test if an add-on is causing crash by starting Playnite in safe mode (from Help menu or via `Safe Mode.bat` from Playnite's installation folder), or by manually disabling extensions (from add-ons menu) until the crash goes away.

- 3rd party application or system malfunction. This is usually true for crashes that just close Playnite without any crash dialog or error message whatsoever. Usually caused by applications that inject overlays or interact with GPU accelerated apps (and games) in some other manner. Also sometimes caused by anti-virus applications falsely flagging Playnite and deleting/blocking its files.

Applications recently known to cause most issues:
- Avast
- AVG
- Malwarebytes
- Nahimic service

### General network issues
  
Usually occurs while installing Playnite or downloading addons. It can happen due to multiple reasons:
  
  - Firewall or anti-virus blocking Playnite processes
  - DNS functionality being broken on ISP's side
  - [network issue on ISP's side](https://github.com/JosefNemec/Playnite/issues/3268)
  - restarting internet modem also helped some people to fix network related issues
  
  In case of DNS issues, you can use CloudFlare's or Google's DNS servers:
  
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

### My controller is not working

Playnite is currently not compatible with all types of controllers. For more information, refer to [controller support](../playniteFullscreenMode.md#controller-support).

Additionallly, certain software can affect how your PC recognizes your controller by converting it to a secondary controller in your system, making Playnite be unable to detect it. To fix this, press `Select` or click the `Playnite` icon to open the menu then navigate to `Settings` > `Input` and verify that the `Primary Controller` option is disabled.