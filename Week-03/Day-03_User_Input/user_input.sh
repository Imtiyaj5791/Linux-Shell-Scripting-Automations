#!/bin/bash

echo "=========================================="
echo "      WELCOME TO DEVOPS USER PORTAL       "
echo "=========================================="

# 1. Standard tareeqa: -p flag (p ka matlab Prompt, yaani sawaal poochna)
read -p "Bhai, apna naam batao: " USER_NAME

echo "Welcome $USER_NAME! Chalo aapka profile setup karte hain."
echo "------------------------------------------"

# 2. Secret input ke liye: -s flag (s ka matlab Silent/Secret, jaise password)
read -sp "Apna secure AWS Token dalo (yeh screen par nahi dikhega): " AWS_TOKEN
echo "" # Yeh khali echo sirf naye line par jaane ke liye hai

echo "------------------------------------------"
echo "🎉 Profile Created Successfully!"
echo "➜ Engineer Name: $USER_NAME"
echo "➜ AWS Token Saved: [HIDDEN FOR SECURITY]"
echo "=========================================="
