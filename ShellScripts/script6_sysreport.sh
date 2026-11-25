#!/bin/bash
echo "===== SYSTEM REPORT ====="
echo "Date: $(date)"
echo
echo "--- CPU INFO ---"
grep -m1 "model name" /proc/cpuinfo
echo "Cores: $(grep -c ^processor /proc/cpuinfo)"
echo
echo "--- MEMORY USAGE ---"
free -h
echo
echo "--- DISK USAGE ---"
df -h /
echo
echo "--- TOP PROCESSES ---"
ps aux --sort=-%mem | head -6
echo
echo "--- UPTIME ---"
uptime -p
