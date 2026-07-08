#!/bin/bash

# ====================================================================
# Script Name: devops_env_backup.sh
# Description: Production-Ready Automation Script with Source & Command
# ====================================================================

# 1. Variables Definition
PROJECT_NAME="E-Commerce-App"
SOURCE_DIR="$HOME/Desktop/Linux-Shell-Scripting-Automations/Week-03" # Kahan SE backup lena hai (Hum Week-03 folder ka backup le rahe hain)
BACKUP_DIR="$HOME/Desktop"                                           # Kahan PAR save karna hai (Desktop par save hoga)

echo "------------------------------------------------"
echo "INITIATING BACKUP PROCESS ON SERVER: $HOSTNAME"
echo "------------------------------------------------"
echo "Source Directory    : $SOURCE_DIR"
echo "Backup Destination  : $BACKUP_DIR/${PROJECT_NAME}_backup.tar.gz"
echo "------------------------------------------------"

# 2. Asli Action Command (tar) - Yeh real mein data ko compress karega
# -c (create), -z (gzip compression), -f (file name specification)
tar -czf "$BACKUP_DIR/${PROJECT_NAME}_backup.tar.gz" "$SOURCE_DIR" 2>/dev/null

echo "Status: Backup successfully created at $BACKUP_DIR/${PROJECT_NAME}_backup.tar.gz"