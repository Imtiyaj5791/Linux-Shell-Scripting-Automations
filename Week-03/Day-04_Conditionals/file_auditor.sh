#!/bin/bash

# Read user input with a prompt in a single line
read -p "Enter the file or folder name: " Target_File

echo "-----------------------------------"
echo "🔎 Checking status for target: $Target_File"
echo "-----------------------------------"

# Check if the input target exists and what it is
if [ -d "$Target_File" ]; then
    echo "📁 Result: '$Target_File' is a DIRECTORY (Folder)."
elif [ -f "$Target_File" ]; then
    echo "📄 Result: '$Target_File' is a regular FILE."
    
    # Check if the file is Empty or has data
    if [ -s "$Target_File" ]; then
        echo "✅ Size Check: File is NOT empty, it contains data."
    else
        echo "⚠️ Size Check: File is EMPTY!"
    fi
    
    # Check if the file has Execute permissions
    if [ -x "$Target_File" ]; then
        echo "🚀 Permission Check: File is EXECUTABLE (Script)."
    else
        echo "🔒 Permission Check: File is NOT executable (Normal File)."
    fi
else
    echo "❌ Result: '$Target_File' does not exist in this folder!"
fi
echo "-----------------------------------"
