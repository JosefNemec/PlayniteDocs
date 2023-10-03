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

Some antivirus apps, like Malwarebytes and Avast, may have false positive detections for Playnite, leading to crashes and odd behavior. Check your antivirus settings.

**Multiple GPUs:**

If your system has both integrated and dedicated GPUs, ensure that Playnite is using the dedicated GPU and not the integrated one. [Help here](https://www.digitalcitizen.life/set-which-video-cards-are-used-apps-games-windows-10/) 👈

**System File Corruption:**

Random crashes may result from system file corruptions. Try reinstalling the latest .NET Framework version and running a system integrity check using the [System File Checker tool (sfc)](https://support.microsoft.com/en-au/topic/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system-files-79aa86cb-ca52-166a-92a3-966e85d4094e) to repair missing or corrupted system files.

## Authentication and syncing Issues

**Integrations require re-authentication:**

When moving or syncing Playnite to a different system, some services may invalidate authentication sessions. Avoid syncing files tied to specific user/system locations, such as browser cache and ExtensionsData folders.

**Cannot authenticate with several accounts after Playnite update:**

Using "Clear web cache" in the "Advanced" settings menu usually resolves the issue.

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

### Input doesn't work in Fullscreen Mode after exiting a game

This issue occurs due to game/emulator/Windows not returning application focus to Playnite correctly. While some workarounds exist, they may not be 100% reliable. Avoid switching between a game and other applications to minimize the problem.

We've implemented workarounds and a "guide" controller button option to address this issue, but it's not always 100% reliable. Further improvements could potentially introduce other problems.

### Google Image search doesn't work

Go to `Settings -> Advanced` and use "Clear web cache" to resolve this issue.

### Play Time won't sync

Play time sync is supported by specific library integration plugins. Set `Import playtime of games in library` option to `Always`  in `Settings` > `General` to force sync from remote accounts. For more information see [here](../configuringPlaynite.md#importing-playtime-from-third-party-libraries-and-services).

### Can't drag and drop files to Playnite

Running Playnite with elevated user rights (as Administrator) can prevent drag-and-drop functionality. Avoid running Playnite as an admin or run the source of the drag operation as an admin.

### Games disappearing, Resetting Properties

Syncing Playnite's library files via cloud solutions (OneDrive, Google Drive) can result in this issue. Ensure file sync only happens when Playnite is not running and avoid running multiple Playnite instances using the same cloud files.

### Crash on Startup (Windows 7 Only)

Caused by an issue in Microsoft's update for .NET 4.7. Follow instructions from Microsoft's support page or manually install update KB4074906.

### Crash on Startup

Versions of RivaTuner or related apps can cause this issue. Disable GPU acceleration in settings or add Playnite to RivaTuner's exclusion list.

### Unable to link Accounts, login shows white page

Check your internet connection, antiviruslink and firewall settings to ensure `PlayniteUI.exe` and `CefSharp.BrowserSubprocess.exe` processes are not being blocked.

Update Intel drivers to fix this issue. Alternatively, disable hardware acceleration in Playnite (not recommended).

### AuthorizationManager check failed error at Startup

If you are using portable version of Playnite then Windows may be blocking loading of some script files. Go to Playnites program folder, under `Scripts` subfolder locate script files reporting AuthorizationManager error, open file properties (via right-click on the file) and unblock the files.

### Extensions menu is grayed Out / PowerShell extensions not loading

On Windows 7 and 8, [installing PowerShell 5](https://www.microsoft.com/en-us/download/details.aspx?id=54616) resolves this issue.

### Settings being Reset or general Data Loss

Users reported these issues when installing Playnite via Chocolatey. Official installation methods are recommended to avoid these problems.

### WebP Images don't display properly

Install the [WebP Image Extensions](https://www.microsoft.com/en-us/p/webp-image-extensions/9pg2dk419drg) from Microsoft Store.

### Rendering issues while streaming Playnite with Sunshine/Moonlight/Parsec

Incompatibility between streaming software and Playnite's UI library (WPF) can cause rendering problems. Report these issues to the developers of the streaming software for potential fixes.

### Playnite Takes Longer to Start After Windows Update

Open Command Prompt as admin and run commands to update .NET:
`c:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe update` and `c:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.exe update`.