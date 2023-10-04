Custom directory open command
---------------------

By default, Playnite uses Explorer process to navigate to file system directories, for example, when opening game's installation location. This behavior can be overwritten via `Folder open command` option available in the `Advanced` section in settings.

The option takes shell command to be executed when some directory open action is invoked in Playnite. The actual directory is passed to the command string via {Dir} variable.

For example, to open directory in Total Commander application, use following command:

`"c:\Programs\totalcmd\TOTALCMD64.EXE" /L="{Dir}" /O /T`