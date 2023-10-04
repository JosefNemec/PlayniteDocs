# Playnite Fullscreen Mode
---------------------

## Introduction

**Fullscreen Mode** offers controller support and is recommended for a couch or console-like gaming experience. It provides ease of use, especially when using a controller away from your PC display. You can open this mode using the Fullscreen Mode Playnite shortcut or executable. Alternatively, switch to Fullscreen Mode from Desktop Mode by pressing the `F11` keyboard shortcut, from the tray or main menu.

### User Interface


The UI consists of the following panels:

| Id | Name           | Description                                               |
|--- |--------------- |---------------------------------------------------------- |
| 1  | Top panel      | Quickly switch configured Filter Presets and open Playnite settings. Use Left and Right bumpers to switch presets. |
| 2  | Filters Panel  | Configure filters to select what should be displayed in the library panel. |
| 3  | Library panel  | Displays your library.                                    |

![Playnite Fullscreen Mode](images/playniteFullscreenMode_UI.jpg)

To open the game view, select a game and press the **Details button**, which is the **A button** by default.

![Game View](images/playniteFullscreenMode_GameDetails.jpg)

### Controller Support

Controller support is available exclusively in Fullscreen Mode, currently compatible with `XInput` controllers. General `DirectInput` support is planned to be added in [Playnite 11](https://github.com/JosefNemec/Playnite/issues/684).

Common controllers that support `XInput` include Xbox controllers. Controllers using `DInput`, such as PlayStation and Nintendo controllers, are not supported. Most generic controllers also fall under `DInput`.

To use a controller that doesn't support the XInput API, you'll need to utilize a `DirectInput` to `XInput` wrapper. Some available wrappers include:

- [x360ce](https://www.x360ce.com/)
- [ds4windows](https://ryochan7.github.io/ds4windows-site/)
- [XOutput](https://github.com/csutorasa/XOutput)