#!/bin/bash
# Test if UFW is enabled and ports are open
sudo ufw status | grep "2222/tcp" && echo "UFW SSH Port: PASSED" || echo "UFW SSH Port: FAILED"
