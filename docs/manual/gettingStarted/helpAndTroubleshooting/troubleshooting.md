## Troubleshooting
---------------------

### I'm having an issue with my games

Refer to the games FAQ page [here](../../library/games/faq.md).

### Crashing on startup

Startup crashes or freezes usually happen because of these reasons:

1) Bug in Playnite itself. This is indicated by Playnite showing crash dialog with an ability to send crash report. If this happens, send crash report and open new [bug report](https://github.com/JosefNemec/Playnite/issues).

2) Caused by a third party, typically by:

- **Extension or theme:**
  
  In this case Playnite tries to detect if a crash was caused by an add-on and will show appropriate error about it, but this is always not possible. You can test if an add-on is causing crash by starting Playnite in safe mode (from Help menu or via `Safe Mode.bat` from Playnite's installation folder), or by manually disabling extensions (from add-ons menu) until the crash goes away.

- **3rd party application or system malfunction:**
  
  This is usually true for crashes that just close Playnite without any crash dialog or error message whatsoever. Usually caused by applications that inject overlays or interact with GPU accelerated apps (and games) in some other manner. Also sometimes caused by anti-virus applications falsely flagging Playnite and deleting/blocking its files.

  Applications recently known to cause most issues:
  - Avast
  - AVG
  - Malwarebytes
  - Nahimic service

### General network issues
  
Usually occurs while installing Playnite or downloading addons. It can happen due to multiple reasons:
  
  - Firewall or anti-virus blocking Playnite processes.
  - A [network issue on your ISP's (Internet Service Provider) side](https://github.com/JosefNemec/Playnite/issues/3268).
  - Some users have reported that restarting their internet modem helped resolve network-related problems.

If you suspect DNS issues, you can switch to using either CloudFlare's or Google's DNS servers:

- [CloudFlare DNS Setup for Windows](https://developers.cloudflare.com/1.1.1.1/setup/windows/)
- [Google Public DNS Setup for Windows](https://developers.google.com/speed/public-dns/docs/using#windows)

### Can't install into specific folder

This issue occurs when the installer lacks the necessary permissions to write to the selected destination folder. If you encounter this problem, try using a different location for the installation.

### Download fails

Make sure that your Firewall or Anti-malware software is not blocking the installer process.

### General failure

In case of general failure during installation, please let us know by [opening new bug report](https://github.com/JosefNemec/Playnite/issues/new/choose) and use offline installer until the issue is fixed.

### Offline installers

You can download offline installers from the [latest releases page](https://github.com/JosefNemec/Playnite/releases/latest).

Use the EXE file for a standard installation and the ZIP file for a portable one. Please be aware that the offline installer is not digitally signed, so your antivirus software or browser may flag it as "potentially dangerous," which is not the case.


### I'm getting warning about elevated privileges

Playnite will display a warning if it detects that it is running with elevated privileges. This warning is shown because these elevated privileges are inherited by all installed extensions and any applications launched from Playnite, including games and other software.

It's important to note that Playnite itself **does not** require elevated privileges to function properly, so running it with elevated privileges poses an unnecessary security risk.

You may encounter this warning under various circumstances, including:

- When Playnite is launched as an administrator, either manually or through compatibility flags.
- If the application initiating Playnite is already running with elevated privileges.
- When you have User Account Control (UAC) completely disabled in your Windows settings.
- If you installed Playnite using an unsupported method that forces it to run with elevated privileges. For example, some users reported this issue when installing via Chocolatey.

### My controller is not working

Playnite is currently not compatible with all types of controllers. For more information, refer to [controller support](../playniteFullscreenMode.md#controller-support).

Additionallly, certain software can affect how your PC recognizes your controller by converting it to a secondary controller in your system, making Playnite be unable to detect it. To fix this, press `Select` or click the `Playnite` icon to open the menu then navigate to `Settings` > `Input` and verify that the `Primary Controller` option is disabled.