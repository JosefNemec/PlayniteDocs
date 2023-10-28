## Frequently Asked Questions (FAQ)
---------------------

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

### Can I put a manually added game into a specific "Library"?

It's not possible. Manually added games will always appear under the `Playnite` library. The `Library` field specifically refers to a library plugin responsible for a game. Attempting to force a game into the `Library` would disrupt functionality, as the responsible library plugin would be unable to properly manage that game.

As an alternative you can use the `Source` field, which is user configurable.

### I uninstalled a library plugin but its games are still there, why?

Uninstalling a library plugin **does not** remove its games. Playnite never removes automatically removes a game that has already been imported to your library.

If you wish to remove the games from a certain library, you need to remove them using the methods mentioned [here](removingGames.md).

An easy way to remove them is by filtering by `Source` or `Library` in the Filter Panel and selecting all games with `Ctrl+A`.

### Can I add games that are not in my library, such as wishlisted games, console or physical games?

Yes, you can add any games to your library by manually creating a game entry for any purpose. For more information, see [here](addingGames.md#manually)

Additionally, if your purpose is only to be able to see your wishlisted games in Playnite, there are extensions made by the Playnite community for that purpose that and there are also library plugins that import games from consoles. Explore the extensions database to find them.

### Can I launch different versions of a game or launch different games from a single game entry in my library?

Yes, whether you want to launch different versions of the same game or even different games or executables you can use Game Actions for this purpose.

For more information, see [here](gameActions.md).

### My games are missing metadata, why?

In most cases, this happens when you restart Playnite after first importing games to your library while the metadata download process has not yet finished. In such cases, Playnite will not start this process again upon restart and you have to initiate this process again manually.

For more information, refer to [here](metadata.md#updating-game-metadata).

Additionally, it may be possible that your currently installed metadata plugins from which Playnite obtains this data from may not be able to provide data for all metadata fields for your games, like icons or other data. In such case, you can try installing and configuring additional metadata plugins.

If you are wondering what metadata plugins you should install, please refer to [here](../../features/extensionsSupport/faq.md#what-are-the-best-extensions-that-i-should-install).
