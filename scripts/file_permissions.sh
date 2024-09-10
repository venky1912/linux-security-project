#!/bin/bash
# Harden file permissions for /etc/passwd and /etc/shadow
sudo chmod 644 /etc/passwd
sudo chmod 600 /etc/shadow
