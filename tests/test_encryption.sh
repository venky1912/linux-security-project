#!/bin/bash
# Test if cryptsetup is installed
dpkg -l | grep cryptsetup && echo "Cryptsetup: PASSED" || echo "Cryptsetup: FAILED"
