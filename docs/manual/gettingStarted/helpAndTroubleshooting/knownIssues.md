# Known Issues
---------------------

> [!NOTE]
> If you see any path on this page that starts with **%appdata%** or **%localappdata%**, then **copy that path exactly as written** and paste it into your file explorer to navigate to a correct directory. Strings starting and ending with % are environment variables that will be properly converted when you tell your file explorer to navigate there.

## General performance issues and crashes

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

**System File Corruption:**

Random crashes may result from system file corruptions. Try reinstalling the latest .NET Framework version and running a system integrity check using the [System File Checker tool (sfc)](https://support.microsoft.com/en-au/topic/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system-files-79aa86cb-ca52-166a-92a3-966e85d4094e) to repair missing or corrupted system files.

## Authentication and syncing Issues

**Integrations require re-authentication:**

When moving or syncing Playnite to a different system, some services may invalidate authentication sessions. Avoid syncing files tied to specific user/system locations, such as browser cache and ExtensionsData folders.

**Cannot authenticate with several accounts after Playnite update:**

You can often resolve this issue by using the "Clear web cache" option in the "Advanced" settings menu.

## Graphical and UI issues

**Graphical Glitches with Hardware acceleration enabled:**

This issue can be caused by:
  
  - Third-party apps that inject overlays to other processes, such as RivaTuner and derivatives like MSI Afterburner, EVGA Precision etc. If you use any software like this, add Playnite processes to exclusion lists if needed.
  - `Nahimic Service`, generally causes issues to a lot of apps and games [including Playnite.](https://playnite.link/forum/thread-747.html)
  - Outdated or problematic graphics drivers. Try to update or reinstall GPU drivers.

**UI Stuttering and Mouse Lag:**

Users with G-Sync monitors or FreeSync-enabled AMD cards may experience UI stuttering. It can occur when using G-Sync monitor with "windowed mode" support enabled. To fix the issue create a profile for Playnite processes in 
  Nvidia's control panel and set `Monitor Technology` to `Fixed Refresh`
  
  - Open the NVIDIA Control Panel and navigate to "Manage 3D Settings"
  - Select the "Program Settings" tab
  - Click "Add" to add a program, and select Playnite
  - Change the "Monitor Technology" from "G-SYNC" to "Fixed Refresh"

**Blur-Related Issue:**

Integrated Intel GPUs may struggle with background blur. Adjust blur intensity and quality or disable it in settings.

**Integrated GPU Compatibility:**

Some integrated GPUs may not fully support or have optimal performance of certain WPF (User Interface framework Playnite uses) features used by Playnite. Ensure Playnite runs on a dedicated GPU or disable effects like background blur and transition animations in Playnite Settings.

**Add-On Performance Impact:**

Some add-ons, including plugins and themes, can affect performance. Disable individual add-ons to identify any problematic ones.

**UI Stuttering When Scrolling Large Lists:**

Slow hard drives or disabled GPU acceleration can cause this issue. Ensure that Hardware acceleration is enabled and try enabling `Asynchronous image loading` in `Settings` > `Advanced` > `Performance`.

## Web View and component issues

**Web View Initialization Failure:**

This usually happens when program files are missing, damaged, or blocked. You can try following to fix the issue:
  - Make sure your antivirus doesn't block files from Playnite's installation folder.
  - Check that all files are installed correctly or try re-installing Playnite.
  - Install [Visual Studio C++ 2019 redistributables](https://aka.ms/vs/17/release/vc_redist.x86.exe) if you are on Windows 7 or 8.
  - Choose a different installation location.

## Specific functional issues

### Google Image search doesn't work

Go to `Settings` > `Advanced` and use the "Clear web cache" option to resolve this issue.

### Play Time won't sync

Play time sync is supported by specific library integration plugins. Set `Import playtime of games in library` option to `Always`  in `Settings` > `General` to force sync from remote accounts. For more information see [here](../configuringPlaynite.md#importing-playtime-from-third-party-libraries-and-services).

### Can't drag and drop files to Playnite

Running Playnite with elevated user rights (as Administrator) can prevent drag-and-drop functionality. Avoid running Playnite as an admin or run the source of the drag operation as an admin.

### Games disappearing, Resetting Properties

Syncing Playnite's library files via cloud solutions (OneDrive, Google Drive) can result in this issue. Ensure file sync only happens when Playnite is not running and avoid running multiple Playnite instances using the same cloud files.

### Crash on Startup (Windows 7 Only)

Caused by an issue in Microsoft's update for .NET 4.7. Follow the instructions from Microsoft's support page or manually install the KB4074906 update.

### Crash on Startup

Versions of RivaTuner or related apps can cause this issue. Disable GPU acceleration in settings or add Playnite to RivaTuner's exclusion list.

### Unable to link Accounts, login shows white page

1. Check your internet connection, antivirus and firewall settings to ensure `PlayniteUI.exe` and `CefSharp.BrowserSubprocess.exe` processes are not being blocked.

2. Consider updating your Intel drivers to fix this problem. Alternatively, you can disable hardware acceleration in Playnite, although this is not recommended as that will cause general performance issues in Playnite.

### AuthorizationManager check failed error at Startup

If you are using the portable version of Playnite and encounter the AuthorizationManager error at startup, it may be due to Windows blocking the loading of certain script files. To resolve this, follow these steps:

1. Navigate to Playnite's program folder.
2. Within the folder, locate the `Scripts` subfolder.
3. Identify the script files that are reporting the AuthorizationManager error.
4. Right-click on each of these files and open their properties.
5. Unblock the files to allow them to run without issue.

### Extensions menu is grayed Out / PowerShell extensions not loading

On Windows 7 and 8, [installing PowerShell 5](https://www.microsoft.com/en-us/download/details.aspx?id=54616) resolves this issue.

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

### Controller input doesn't work in Fullscreen mode after exiting a game

If you're experiencing controller input problems in fullscreen mode after exiting a game, it's likely due to issues with the game, emulator, or Windows not properly returning application focus. Playnite has implemented some workarounds for this problem, and you can also enable the option to use the "Guide" controller button to refocus fullscreen mode. However, it's important to note that this solution may not be 100% reliable, and further improvements are limited due to potential issues with aggressive application focusing in other areas.

Additionally, switching from a game and back (e.g., using Alt-Tab) may increase the likelihood of the issue appearing once the game eventually stops running, for reasons that are not entirely clear.

### Web image search doesn't show any results

Can be fixed by clearing web cache in advanced application settings.