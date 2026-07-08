#!/bin/bash

# ====================================================================
# Script Name: basic_variable.sh
# Description: Demonstrating Variable Declaration and Reference in Bash
# ====================================================================

# 1. Variable Declaration (Assigning values to variables without spaces)
DEVELOPER_NAME="Imtiyaj Farhan"
EXPERIENCE_YEARS=2

# 2. Variable Referencing (Accessing values using the '$' sign)
echo "Deploying infrastructure managed by: $DEVELOPER_NAME"
echo "Experience Level: $EXPERIENCE_YEARS Years in DevOps"