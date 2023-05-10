# Distributing Themes

Introduction
---------------------

You should only distribute files that your theme changes compared to the original source theme. It's because of the way theme loading is implemented in Playnite. Playnite is capable of loading only modified files while keeping everything else from original theme. This is to make sure that when change is made to original files, those changes are also applied to custom themes as well (unless custom theme provides their own version of that file).

This is done for a reason that theme files can contain functional elements (like buttons), that add or remove functionality and this makes sure that new functionality is also available in custom themes if possible.

If you distribute all files with your theme (even those you didn't modify) and update is made to Playnite that adds new functionality via theme files, your theme users won't be able to use that new functionality until you update the theme.

Packaging themes
---------------------

To package theme, run [Toolbox](../toolbox.md) utility with following arguments:

```cmd
Toolbox.exe pack <ThemeDirectoryPath> <TargetFolder>
```

For example...

```cmd
Toolbox.exe pack "c:\playnite\Themes\Desktop\Default\TestingTheme" "c:\somedir"
```

...will create `c:\somedir\SuperClearModern.pthm` theme file you can distribute to users.

`<ThemeDirectoryPath>` is full path to folder where you are developing the theme.

Uploading themes
---------------------

The best place to share themes is via [Playnite add-on database](https://github.com/JosefNemec/PlayniteAddonDatabase), submitting a theme there will make it available in Playnite's built-in add-on browser and will also enable easy theme installation and updates.

Updating themes
---------------------

You will need to update themes from time to time to make sure they work with new Playnite versions properly. You can follow changes to theme files by subscribing to [change tracking GitHub issue](https://github.com/JosefNemec/Playnite/issues/1259).

> [!WARNING] 
> Keeping your theme update is essential if you want theme users to take advantage of newly added Playnite features and fixes.

Updates are necessary in these two cases:

* Theme API is updated with breaking changes (major version number changes, for example from `1.0.0` to `2.0.0`).
  * Playnite will not load themes that are not made for supported API version.
  * Minor updates will not break theme loading. For example Theme made for version `1.0.0` will still load in Playnite with API version `1.5.0`.

* New functionality is added to Playnite that requires update in theme file.
  * This usually means that your theme will still work (unless update means breaking change to Theme API), but users won't be able to make use of new features until the theme is updated.

You generally don't need to update your theme if you didn't modify any files mentioned in the changelog for a specific version and you are packaging your theme using Toolbox utility.

Blend made themes
---------------------

`Toolbox` utility can be used to automatically update theme files if you are developing themes in Blend.

To update existing theme run Toolbox with following arguments:

```cmd
Toolbox.exe update "<ThemeDirectoryPath>"
```

`<ThemeDirectoryPath>` is full path to folder where you are developing the theme.

Toolbox will try to update all files to latest version, but if you modified files that were also modified in the latest API change, you will need to update those files manually. You will get the list of all files requiring manual update after the update process is finished.