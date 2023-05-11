# Playnite documentation

This repository contains sources for Playnite manual and SDK documentation.

# Building

- install [Docfx](https://github.com/dotnet/docfx)
- install [.NET Framework 4.6.2 developer pack](https://dotnet.microsoft.com/en-us/download/visual-studio-sdks)
- navigate to `docs` folder
- run `docfx metadata` (needed to re-run only when `Playnite` subrepo is updated)
- run `docfx build`

To start local server: `docfx serve`
