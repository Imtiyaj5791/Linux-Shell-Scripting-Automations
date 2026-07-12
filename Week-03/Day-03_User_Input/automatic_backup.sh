#!/bin/bash

# ====================================================================
# Script Name:  automatic_backup.sh
# Description:  Automated directory compression and backup utility.
# Usage:        ./automatic_backup.sh <source_dir> <backup_dir>
# Author:       Imtiyaj
# ====================================================================

# Capture positional arguments (Bahar se aane wale raste)
SOURCE_FOLDER=$1
BACKUP_DESTINATION=$2

echo "=================================================="
echo "🚀 SYSTEM INFRASTRUCTURE: AUTOMATED BACKUP SERVICE"
echo "=================================================="
echo "➜ Executing Script: $0"
echo "➜ Total Arguments:  $#"
echo "--------------------------------------------------"

# 🚨 GUARD 1: Check karo dono raste diye hain ya nahi
if [ -z "$SOURCE_FOLDER" ] || [ -z "$BACKUP_DESTINATION" ]; then
    echo "❌ ERROR: Missing required parameters."
    echo "👉 Usage: $0 <source_directory> <backup_destination_directory>"
    echo "👉 Example: $0 /var/log /tmp"
    echo "=================================================="
    exit 1
fi

# 🚨 GUARD 2: Check karo source folder sach mein server par hai ya nahi
if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "❌ ERROR: Source directory '$SOURCE_FOLDER' does not exist."
    echo "=================================================="
    exit 1
fi

# Time ke hisab se unique naam banana
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

echo "📦 Initialization: Creating backup archive..."
echo "➜ Source Path:      $SOURCE_FOLDER"
echo "➜ Destination Path: $BACKUP_DESTINATION/$BACKUP_FILE"
echo "--------------------------------------------------"

# Core Backup Operation (Aapke niyam ke mutabik bina 2>/dev/null ke!)
tar -czf "$BACKUP_DESTINATION/$BACKUP_FILE" "$SOURCE_FOLDER"

# Verify if the backup file was successfully created
if [ $? -eq 0 ]; then
    echo "🎉 [SUCCESS] Backup archive generated successfully."
else
    echo "❌ ERROR: Backup operation failed during execution."
fi
echo "=================================================="
