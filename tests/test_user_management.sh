#!/bin/bash
# Test if secureuser exists and password complexity is enforced
id "secureuser" && echo "User Management: PASSED" || echo "User Management: FAILED"
grep "minlen = 12" /etc/security/pwquality.conf && echo "Password Policy: PASSED" || echo "Password Policy: FAILED"
