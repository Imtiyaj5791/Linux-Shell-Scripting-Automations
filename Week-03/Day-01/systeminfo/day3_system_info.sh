#!/bin/bash

# ====================================================================
# Script Name : day3_system_info.sh
# Description : Tracks basic system health (Hostname, Uptime, Memory)
# Author      : Imtiyaj
# Date        : 2026-07-08
# ====================================================================

echo "=========================================="
echo "          SYSTEM HEALTH REPORT            "
echo "=========================================="

# 1. Hostname
echo "➜ Hostname: $(hostname)"

# 2. System Uptime (Ekdum simple, bina kisi filter ke)
echo "➜ System Uptime: $(uptime -p)"

# 3. Available Memory (RAM check - khula aur saaf)
echo "➜ Memory Details:"
free -h

echo "=========================================="
