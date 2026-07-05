#!/bin/bash

# ====================================================================
# Script Name : day3_system_info.sh
# Description : Tracks basic system health (Hostname, Uptime, Memory)
# Author      : Imtiyaj
# Date        : 2026-07-05
# ====================================================================

echo "=========================================="
echo "          SYSTEM HEALTH REPORT            "
echo "=========================================="

# 1. Hostname (System ka naam)
echo "➜ Hostname: \$(hostname)"

# 2. System Uptime (System kab se chal raha hai)
echo "➜ System Uptime: \$(uptime -p 2>/dev/null || echo 'N/A on Windows Git Bash')"

# 3. Available Memory (RAM check)
echo "➜ Memory Details:"
free -h 2>/dev/null || echo "   Memory commands run best on pure Linux!"

echo "=========================================="
