# ChromeOS / Crostini notes

## Installation

Run `install.sh` to download and install all dependencies.

Then create symbolic link for scripts from `bin` to `/usr/local/bin` :

```
$ sudo ln -s $PWD/bin/launch-printer-daemon.sh /usr/local/bin
```

## ChromeOS icons

To make scripts available from ChromeOS, copy all desktop files from `application` to `/usr/share/applications`.
```
$ sudo ln -s $PWD/applications/launch-printer-daemon.desktop /usr/share/applications
```
