#!/bin/bash
# Test if fail2ban and AIDE are installed
dpkg -l | grep fail2ban && echo "Fail2ban: PASSED" || echo "Fail2ban: FAILED"
dpkg -l | grep aide && echo "AIDE: PASSED" || echo "AIDE: FAILED"
