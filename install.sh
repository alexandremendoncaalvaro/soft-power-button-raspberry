#!/bin/bash
set -u

git clone https://github.com/alexandremendoncaalvaro/soft-power-button-raspberry.git ~/soft-power-button
cd ~/soft-power-button

sudo cp listen-for-shutdown.py /usr/local/bin/
sudo cp listen-for-shutdown.sh /etc/init.d/

sudo chmod +x /usr/local/bin/listen-for-shutdown.py
sudo chmod +x /etc/init.d/listen-for-shutdown.sh

#Registrar o script pra rodar no boot:

sudo update-rc.d listen-for-shutdown.sh defaults