#!/bin/bash

# ====================================================================
# Script Name: devops_env_backup.sh
# Description: Automating backup path logging using System & Custom Variables
# ====================================================================

# 1. Custom Variables (User-defined)
PROJECT_NAME="E-Commerce-App"
BACKUP_DIR="/var/log/backup"

# 2. System Variables (Built-in Linux environment variables)
# Note: $USER and $HOSTNAME automatically fetch system details
echo "------------------------------------------------"
echo "INITIATING BACKUP PROCESS"
echo "------------------------------------------------"
echo "Current Execution User : $USER"
echo "Target Server Hostname : $HOSTNAME"
echo "Application Name       : $PROJECT_NAME"
echo "Backup Destination     : $BACKUP_DIR/logs_backup.tar.gz"
echo "------------------------------------------------"
echo "Status: Backup configuration generated successfully!"