# Utilities
sudo apt install libnotify-bin

# Printer setup
echo -e "\n\n---- PRINTER SETUP ----"
sudo apt-get install cups cups-client
sudo cupsctl --remote-admin --remote-any --share-printers
sudo systemctl restart cups
echo -e "\n\n---- PRINTER INIT ----"
sudo service cups restart

# Scanner setup
sudo apt-get install simple-scan
