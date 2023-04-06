# ChromeOS / Crostini notes

## Installation

### ChromeOS port forwarding


### Dependencies

Run `install.sh` to download and install all dependencies.

### Link scripts

- Create symbolic link for scripts from `bin` to `/usr/local/bin` :
```
$ sudo ln -s $PWD/bin/launch-printer-daemon.sh /usr/local/bin
```
- To make scripts available from ChromeOS, copy all desktop files from `application` to `/usr/share/applications`.
```
$ sudo ln -s $PWD/applications/launch-printer-daemon.desktop /usr/share/applications
```
## Setup CUPS with ChromeOS

Necessary to access to CUPS admin from ChromeOS and setup a new printer.

### Configuration

Backup the original config
```
sudo cp /etc/cups/cupsd.conf /etc/cups/cupsd.conf.original
```
Then patch the default port in `/etc/cups/cupsd.conf` :
```
...
Port 6631
... 
```
   73  sudo service cups restart

### 
Setup port forwarding on ChromeOS settings (Settings>Developer>Port-forwarding) :
- CUPS on port **6631**
