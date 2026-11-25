#!/bin/bash
# Author: Paramjeet Yadav (Roll No: 2601730091)
# Purpose: Print a system information report

echo "========== SYSTEM INFORMATION REPORT =========="
echo "Name    : Paramjeet Yadav"
echo "Roll No : 2601730091"
echo "Date    : $(date)"
echo "==============================================="
echo
echo "--- CPU ---"
lscpu | grep -E "Model name|Core\(s\) per socket"
echo
echo "--- Memory ---"
free -h | awk '/^Mem:/ {print "Total: " $2; print "Used : " $3}'
echo
echo "--- Top 3 Processes by CPU Usage ---"
echo "PID USER %CPU COMMAND"
ps -eo pid,user,%cpu,comm --no-headers | sort -k3 -nr | head -3
echo
echo "Report generated successfully."

