# Utilities
echo -e "\n\n---- EXTRA SETUP ----"
sudo apt install libnotify-bin

# Printer setup
echo -e "\n\n---- PRINTER SETUP ----"
sudo apt-get install cups cups-client
sudo cupsctl --remote-admin --remote-any --share-printers
sudo systemctl restart cups

# Scanner setup
echo -e "\n\n---- SCANNER SETUP ----"
sudo apt-get install simple-scan
