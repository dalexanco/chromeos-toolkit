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
Restart the CUPS service
```
sudo service cups restart
```
Add a password to your current user
```
sudo passwd $USER
```
From Chrome on ChromeOS, go to http://localhost:6631/admin (connect yourself using your linux user/passwd)

- Setup a new printer (specific to Brother : select Generic / Generic PostScript printer).
- Name your printer with "_CUPS" suffix to identify it later

Then in ChromeOS go to Settings>Printers>Add printer>Server and enter the CUPS server address : http://localhost:6631
You should see your <printer>_CUPS in the available devices now

### 
Setup port forwarding on ChromeOS settings (Settings>Developer>Port-forwarding) :
- CUPS on port **6631**
