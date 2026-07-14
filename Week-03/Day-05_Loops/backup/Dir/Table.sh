#Backup Create

#!/bin/bash

for i in *.txt
do
    cp "$i" "$i.bak"
done


# Dir create

#!/bin/bash

for i in {1..5}
do
    mkdir "dir$i"
done

# Tables

#!/bin/bash

read -p "Enter Number: " num

for i in {1..10}
do
    echo "$num x $i = $((num*i))"
done
