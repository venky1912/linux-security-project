#!/bin/bash
# Create a new user with sudo privileges
sudo adduser secureuser
sudo usermod -aG sudo secureuser

# Enforce password complexity
sudo apt install libpam-pwquality -y
sudo sed -i 's/# minlen = 9/minlen = 12/' /etc/security/pwquality.conf
