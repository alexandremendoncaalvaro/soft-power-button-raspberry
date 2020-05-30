#!/bin/bash
set -u

git clone https://github.com/alexandremendoncaalvaro/soft-power-button-raspberry.git ~/soft-power-button
cd ~/soft-power-button

echo "copying soft power button script files to run at startup..."
sudo \cp listen-for-shutdown.py /usr/local/bin/
sudo \cp listen-for-shutdown.sh /etc/init.d/

sudo chmod +x /usr/local/bin/listen-for-shutdown.py
sudo chmod +x /etc/init.d/listen-for-shutdown.sh

echo "registering script on boot..."
sudo update-rc.d listen-for-shutdown.sh defaults

echo "removing installation files..."
sudo rm -rf ~/soft-power-button

echo "DONE! Reboot to start the service"