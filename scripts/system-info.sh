#!/usr/bin/env bash

# Simple System Information Script
# A beginner Bash scripting project.

echo "=============================="
echo "       SYSTEM INFORMATION"
echo "=============================="

echo ""
echo "Operating System:"
cat /etc/os-release | grep PRETTY_NAME

echo ""
echo "Kernel Version:"
uname -r

echo ""
echo "System Uptime:"
uptime -p

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "=============================="
echo "       SCRIPT FINISHED"
echo "=============================="
