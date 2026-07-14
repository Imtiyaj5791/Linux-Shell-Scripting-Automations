#!/bin/bash

# Initializing a counter variable
count=1

# Run the loop as long as the counter is less than or equal to 5
while [ $count -le 5 ]
do
    echo "This is While Loop Iteration: $count"
    
    # Incrementing the counter by 1 (Crucial step to prevent infinite loop)
    count=$((count + 1))
done
