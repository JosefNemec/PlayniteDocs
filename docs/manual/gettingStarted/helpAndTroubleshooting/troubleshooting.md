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

If you're not sure what's causing the problem, you can try the following:
1. **Restart Your Modem:**
   
   Some users have reported that restarting their internet modem helped resolve network-related problems.
2. **Switch Networks:**
   
   If possible, try using a different internet network to discard if the issue is in the network that is currently being used.
3. **Use CloudFlare or Google DNS Servers:**
   
   Switching to CloudFlare's or Google's DNS servers could fix the problem if it's an issue caused by your internet service provider:
   - [CloudFlare DNS Setup for Windows](https://developers.cloudflare.com/1.1.1.1/setup/windows/)
   - [Google Public DNS Setup for Windows](https://developers.google.com/speed/public-dns/docs/using#windows)
  
   > [!NOTE]
   >
   > DNS (Domain Name System) is similar to the internet's address book and it helps your computer locate and connect to websites. Sometimes, the default DNS system provided by your internet service can cause issues, like blocking certain websites, which can affect Playnite and other programs when connecting to the internet.
4. **Firewall or Antivirus Settings:**
   
   Verify that a Firewall or anti-virus is not blocking Playnite processes.

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

See [controller support](../playniteFullscreenMode.md#controller-support) section from Fullscreen mode manual for information about supported controllers.

Additionally, make sure that controller support is enabled in Fullscreen mode's input settings and that specific controllers are not disabled on the same settings page.