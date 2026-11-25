#!/bin/bash
echo "User: $(whoami)"
echo "Host: $(hostname)"
df -h | head -5
free -h
