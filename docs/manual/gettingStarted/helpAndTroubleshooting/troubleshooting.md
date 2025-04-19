## Troubleshooting
---------------------

> [!NOTE]
> If you see any path on this page that starts with **%appdata%** or **%localappdata%**, then **copy that path exactly as written** and paste it into your file explorer to navigate to a correct directory. Strings starting and ending with % are environment variables that will be properly converted when you tell your file explorer to navigate there.

### I'm having an issue with my games

Refer to the games FAQ page [here](../../library/games/faq.md).

### Playnite is crashing

Startup crashes or freezes usually happen because of these reasons:

1) Bug in Playnite itself. This is indicated by Playnite showing crash dialog with an ability to send crash report. If this happens, send crash report and open new [bug report](https://github.com/JosefNemec/Playnite/issues).

2) Corrupted program file can cause startup issues, reinstalling Playnite fixes it. Reinstall doesn't affect user data files (game library data).

3) Caused by a third party, typically by:

- **Extension or theme:**
  
  In this case Playnite tries to detect if a crash was caused by an add-on and will show appropriate error about it, but this is always not possible. You can test if an add-on is causing crash by starting Playnite in safe mode (from Help menu or via `Safe Mode.bat` from Playnite's installation folder), or by manually disabling extensions (from add-ons menu) until the crash goes away.

- **3rd party application:**
  
  This is usually true for crashes that just close Playnite without any crash dialog or error message whatsoever. Usually caused by applications that inject overlays or interact with GPU accelerated apps (and games) in some other manner. Also sometimes caused by anti-virus applications falsely flagging Playnite and deleting/blocking its files.

  Applications recently known to cause most issues:
  - Avast
  - AVG
  - Malwarebytes
  - Nahimic service

4) Broken .NET Framework installation. Can be repaired by downloading the latest runtime installer from [this website](https://dotnet.microsoft.com/en-us/download/dotnet-framework).
5) Broken Windows installation. Can be checked and fixed by running [System File Checker tool](https://support.microsoft.com/en-us/windows/using-system-file-checker-in-windows-365e0031-36b1-6031-f804-8fd86e0ef4ca).
6) Broken Windows installation #2. There've been reports of customized/debloated Windows editions having issues running Playnite, for example Tiny or Atlas versions. Solution is to not use these homebrew editions and using only official Windows installations.

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

### Playnite runs slow

**Custom Themes and Extensions:**

Custom themes and extensions can impact Playnite's performance and stability. If you encounter issues, try these steps:
  
  - Switch to the default theme.  
  - Disable third-party extensions.  
  - Ensure hardware acceleration is enabled in `Settings` > `Advanced` > `Performance settings`.  
  - Test in `Safe Mode`, which can be opened in `Menu` > `Help` > `Restart in Safe Mode` or by opening the `Safe Mode.bat` found in the installation folder.

**Antivirus Interference:**

Certain antivirus applications, such as Malwarebytes and Avast, may produce false positive detections for Playnite, resulting in crashes and unexpected behavior. It's recommended to review your antivirus settings.

**Multiple GPUs:**

If your system has both integrated and dedicated GPUs, ensure that Playnite is using the dedicated GPU and not the integrated one. Help is available [here](https://www.digitalcitizen.life/set-which-video-cards-are-used-apps-games-windows-10/).

**Stuttering background when switching between games specifically**

Happens usually on integrated or low end GPUs. Lower background blur quality and/or intensity in general appearance settings.

### Graphical and UI issues

**Graphical Glitches with Hardware acceleration enabled:**

This issue can be caused by:
  
  - Third-party apps that inject overlays to other processes, such as RivaTuner and derivatives like MSI Afterburner, EVGA Precision etc. If you use any software like this, add Playnite processes to exclusion lists if needed.
  - `Nahimic Service`, generally causes issues to a lot of [apps and games](https://www.google.com/search?q=nahimic+service+problems) including Playnite.
  - Outdated or problematic graphics drivers. Try to update or reinstall GPU drivers.

**UI Stuttering and Mouse Lag:**

Users with variable refresh rate (VRR) displays (VESA Adaptive-Sync, G-Sync, FreeSync etc.) may experience stuttering and generally laggy feeling user interface. To fix the issue, create custom profile for Playnite processes (for both Playnite.DesktopApp.exe and Playnite.FullscreenApp.exe) in your graphics driver software that disables VRR specifically for Playnite.

For Nvidia:  
- Open the NVIDIA Control Panel and navigate to "Manage 3D Settings"
- Select the "Program Settings" tab
- Click "Add" to add a program
- Select Playnite exe (you'll need to do this for both Fullscreen and Desktop exe separately)
- Change the "Monitor Technology" from "G-SYNC" to "Fixed Refresh"

For AMD:
- Open AMD Adrenalin and go to "GAMES" tab
- At the top right click on the 3 small dots then add a game
- Select Playnite exe (you'll need to do this for both Fullscreen and Desktop exe separately)
- Select imported Playnite process from the games list
- Deactivate "Radeon FreeSync" option

You will need to restart Playnite if you made these changes while Playnite is running.

**UI Stuttering When Scrolling Large Lists:**

Slow hard drives or disabled GPU acceleration can cause this issue. Ensure that Hardware acceleration is enabled and try enabling `Asynchronous image loading` in `Settings` > `Advanced` > `Performance`.

**Extra window borders or window content disappearing**

Usually happens when software that affects window rendering/positioning is installed. For example tools like `Mica For Everyone` and similar.

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

### Controller is acting weird

This usually happens when 3rd party controller application or input emulator app is installed. For example apps like DS4Windows, Steam input or gamepad to keyboard mappers. The most common issue occurring is Playnite recognizing one input twice or more times. This is because Playnite detects "emulated" and real device at the same time as separate devices. The solution is to go to the input settings in Fullscreen mode and disabling emulated devices, leaving only real ones enabled.

### Controller input doesn't work in Fullscreen mode after exiting a game

If you're experiencing controller input problems in fullscreen mode after exiting a game, it's likely due to issues with the game, emulator, or Windows not properly returning application focus. Playnite has implemented some workarounds for this problem, and you can also enable the option to use the "Guide" controller button to refocus fullscreen mode. However, it's important to note that this solution may not be 100% reliable, and further improvements are limited due to potential issues with aggressive application focusing in other areas.

Additionally, switching from a game and back (e.g., using Alt-Tab) may increase the likelihood of the issue appearing once the game eventually stops running, for reasons that are not entirely clear.

### Authentication and syncing Issues

**Integrations require re-authentication:**

When moving or syncing Playnite to a different system, some services may invalidate authentication sessions. Avoid syncing files tied to specific user/system locations, such as browser cache and ExtensionsData folders.

**Cannot authenticate with several accounts after Playnite update:**

You can often resolve this issue by using the "Clear web cache" option in the "Advanced" settings menu.

### Web View fails to initialize

This usually happens when program files are missing, damaged, or blocked. You can try following to fix the issue:
  - Make sure your antivirus doesn't block files from Playnite's installation folder.
  - Check that all files are installed correctly or try re-installing Playnite.
  - Install [Visual Studio C++ 2019 redistributables](https://aka.ms/vs/17/release/vc_redist.x86.exe) if you are on Windows 7 or 8.
  - Choose a different installation location.

### Web image search doesn't work

Go to `Settings` > `Advanced` and use the "Clear web cache" option to resolve this issue.

If the issue persists after clearing the cache, then your network was blocked by Google from image search website (usually by anti-bot measures) preventing Playnite from getting search results. There is no solution for this other than to wait for block to be lifted or use something like VPN to appear under different IP to Google.

If you are getting actual search results and not seeing thumbnail images, install [WebP Image Extensions](https://www.microsoft.com/en-us/p/webp-image-extensions/9pg2dk419drg) from the Microsoft Store and restart Playnite.

### Can't drag and drop files to Playnite

Running Playnite with elevated user rights (as Administrator) can prevent drag-and-drop functionality. Avoid running Playnite as an admin or run the source of the drag operation as an admin.

### Games disappearing, Resetting Properties

Syncing Playnite's library files via cloud solutions (OneDrive, Google Drive) can result in this issue. Ensure file sync only happens when Playnite is not running and avoid running multiple Playnite instances using the same cloud files.

### Unable to link Accounts, login shows white page

1. Check your internet connection, antivirus and firewall settings to ensure `Playnite.DesktopApp.exe` and `CefSharp.BrowserSubprocess.exe` processes are not being blocked.

2. Update GPU drivers (especially if you have Intel GPU). Alternatively, you can disable hardware acceleration in Playnite, although this is not recommended as that will cause general performance issues in Playnite.

### Settings being Reset or general Data Loss

Users have reported encountering these issues when installing Playnite via Chocolatey. To minimize the risk of these problems, it is recommended to use the official installation methods.

### WebP Images don't display properly

Install the [WebP Image Extensions](https://www.microsoft.com/en-us/p/webp-image-extensions/9pg2dk419drg) from the Microsoft Store.


### Rendering issues while streaming Playnite with Sunshine/Moonlight/Parsec

Incompatibility between streaming software and Playnite's UI library (WPF) can cause rendering problems. Report these issues to the developers of the streaming software for potential fixes.

### Playnite Takes Longer to Start After Windows Update

If you've noticed that Playnite takes longer to start after a Windows update, you can try the following steps:

1. Open the Command Prompt as an administrator.
2. Run the following commands:

    ```
    c:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe update
    c:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.exe update
    ```
