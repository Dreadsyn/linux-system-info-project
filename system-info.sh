#!/bin/bash

echo "===== SYSTEM INFO ====="
echo "User : $USER"
echo "Current directory : $PWD"
echo "Date : $(date)"
echo "Sytem : $(uname -s)"
echo "Kernel : $(uname -r)"
echo "Disk usage:"
df -h /
echo "Memory usage:"
free -h
echo "Uptime:"
uptime -p
echo "CPU cores : $(nproc)"
echo "Load  : $(uptime | awk -F 'load average:' '{print $2}')"
echo
echo "Top 5 CPU processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
