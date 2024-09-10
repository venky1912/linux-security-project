#!/bin/bash
# Test if SSH root login is disabled and port changed
grep "PermitRootLogin no" /etc/ssh/sshd_config && echo "SSH Root Login: PASSED" || echo "SSH Root Login: FAILED"
grep "Port 2222" /etc/ssh/sshd_config && echo "SSH Port Change: PASSED" || echo "SSH Port Change: FAILED"
