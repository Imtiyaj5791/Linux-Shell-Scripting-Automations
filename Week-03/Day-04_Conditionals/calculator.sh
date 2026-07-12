#!/bin/bash

# 1. Take numbers as input
read -p "Enter first number: " NUM1
read -p "Enter second number: " NUM2

echo "-----------------------------------"
echo "Choose an operation:"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"
echo "5. Percentage (%)"
echo "-----------------------------------"

# 2. Take the choice from the user
read -p "Enter your choice (1-5): " CHOICE
echo "-----------------------------------"

# 3. Apply if-else logic based on user choice
if [ "$CHOICE" -eq 1 ]; then
    RESULT=$((NUM1 + NUM2))
    echo "➕ Addition Result ( $NUM1 + $NUM2 ) = $RESULT"

elif [ "$CHOICE" -eq 2 ]; then
    RESULT=$((NUM1 - NUM2))
    echo "➖ Subtraction Result ( $NUM1 - $NUM2 ) = $RESULT"

elif [ "$CHOICE" -eq 3 ]; then
    RESULT=$((NUM1 * NUM2))
    echo "✖️ Multiplication Result ( $NUM1 * $NUM2 ) = $RESULT"

elif [ "$CHOICE" -eq 4 ]; then
    RESULT=$((NUM1 / NUM2))
    echo "➗ Division Result ( $NUM1 / $NUM2 ) = $RESULT"

elif [ "$CHOICE" -eq 5 ]; then
    RESULT=$(( (NUM1 * 100) / NUM2 ))
    echo "📊 Percentage Result ( $NUM1 of $NUM2 ) = $RESULT%"

else
    echo "❌ Invalid Choice! Please enter a number between 1 and 5."
fi
echo "-----------------------------------"
