#!/bin/bash
set -u

sudo cp listen-for-shutdown.py /usr/local/bin/
sudo cp listen-for-shutdown.sh /etc/init.d/

sudo chmod +x /usr/local/bin/listen-for-shutdown.py
sudo chmod +x /etc/init.d/listen-for-shutdown.sh

#Registrar o script pra rodar no boot:

sudo update-rc.d listen-for-shutdown.sh defaults