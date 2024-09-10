#!/bin/bash
# Test if file permissions for /etc/passwd and /etc/shadow are correct
[ $(stat -c "%a" /etc/passwd) -eq 644 ] && echo "File Permissions /etc/passwd: PASSED" || echo "File Permissions /etc/passwd: FAILED"
[ $(stat -c "%a" /etc/shadow) -eq 600 ] && echo "File Permissions /etc/shadow: PASSED" || echo "File Permissions /etc/shadow: FAILED"
