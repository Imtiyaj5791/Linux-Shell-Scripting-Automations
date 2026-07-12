#!/bin/bash

# Fetch live disk usage percentage and delete the % sign
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

# Check the disk space thresholds
if [ $DISK_USAGE -gt 90 ]; then
    echo "❌ CRITICAL: Live Disk is almost full! Current usage: $DISK_USAGE%"
elif [ $DISK_USAGE -gt 70 ]; then
    echo "⚠️ WARNING: Live Disk usage is high! Current usage: $DISK_USAGE%"
else
    echo "✅ SUCCESS: Live Disk space is safe. Current usage: $DISK_USAGE%"
fi
