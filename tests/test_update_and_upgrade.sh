#!/bin/bash
# Test for update and upgrade
if sudo apt update && sudo apt upgrade -y; then
    echo "Update and Upgrade: PASSED"
else
    echo "Update and Upgrade: FAILED"
fi
