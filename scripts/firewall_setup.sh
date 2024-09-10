#!/bin/bash
# Setup UFW firewall and allow SSH on the new port 2222
sudo apt install ufw -y
sudo ufw allow 2222/tcp
sudo ufw allow 80/tcp
sudo ufw enable
