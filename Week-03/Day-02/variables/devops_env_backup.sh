#!/bin/bash

# ====================================================================
# Script Name: devops_env_backup.sh
# Description: Production-Ready Automation Script with Source & Command
# Author      : Imtiyaj
# ====================================================================

# 1. Variables Definition
PROJECT_NAME="E-Commerce-App"
SOURCE_DIR="$HOME/Desktop/Linux-Shell-Scripting-Automations/Week-03" # Kahan SE backup lena hai
BACKUP_DIR="$HOME/Desktop"                                           # Kahan PAR save karna hai

echo "------------------------------------------------"
echo "INITIATING BACKUP PROCESS ON SERVER: $HOSTNAME"
echo "------------------------------------------------"
echo "Source Directory    : $SOURCE_DIR"
echo "Backup Destination  : $BACKUP_DIR/${PROJECT_NAME}_backup.tar.gz"
echo "------------------------------------------------"

# 2. Asli Action Command (tar) - Ekdum saaf bina kisi dustbin ke!
tar -czf "$BACKUP_DIR/${PROJECT_NAME}_backup.tar.gz" "$SOURCE_DIR"

echo "Status: Backup successfully created at $BACKUP_DIR/${PROJECT_NAME}_backup.tar.gz"
