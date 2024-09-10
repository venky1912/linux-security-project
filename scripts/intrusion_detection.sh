#!/bin/bash
# Install and configure fail2ban and AIDE
sudo apt install fail2ban -y
sudo apt install aide -y
sudo aideinit
