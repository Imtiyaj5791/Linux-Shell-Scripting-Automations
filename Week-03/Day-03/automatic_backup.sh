#!/bin/bash

# $1 aur $2 bahar se aane wale arguments hain
PROJECT_NAME=$1
ENV_TYPE=$2

echo "=========================================="
echo "🚀 AUTOMATED DEVOPS DEPLOYMENT TRACKER"
echo "=========================================="
echo "➜ Running Script: $0"
echo "➜ Total Arguments Passed: $#"
echo "------------------------------------------"

# Agar user ne arguments nahi diye toh script ko warning deni chahiye
if [ -z "$PROJECT_NAME" ] || [ -z "$ENV_TYPE" ]; then
    echo "❌ ERROR: Bhai, sahi tarika yeh hai:"
    echo "👉 Usage: $0 <project_name> <environment>"
    echo "👉 Example: $0 ecommerce production"
    echo "=========================================="
    exit 1
fi

echo "🟢 Deploying Project: $PROJECT_NAME"
echo "🟢 Target Environment: $ENV_TYPE"
echo "------------------------------------------"
echo "🎉 [SUCCESS] $PROJECT_NAME successfully tracked in $ENV_TYPE!"
echo "=========================================="
