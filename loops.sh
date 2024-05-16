#!/bin/bash

## There are 3 types of loops:
### 1. for loop
### 2. while loop
### 3. until loop

# For Loop:

users="Pratham Parth Pravin"

for user in ${users}
do
    echo "${user}"
done


for num in {1..10}
do
    echo -n "${num} "
done

echo

# While Loop:

counter=1
while [[ $counter -le 10 ]]
do
    echo $counter
    ((counter++))
done

## The difference between until and while loops is that the until loop
## will run the commands within the loop until the condition becomes true.

# Until Loop:

count=1
until [[ $count -gt 10 ]]
do
    echo $count
    ((count++))
done

## Continue and Break statement...

# continue [n] # this means that skip n loops ahead
# continue 1 and continue means the same, skip this loop and resume next loop

# break [n] # this means that break the n loops when you have nested loops
# break 1 and break means the same, break the loop...


for (( a = 1; a < 10; a++ ))
do
    echo "outer loop: $a"
    for (( b = 1; b < 100; b++ ))
    do
        if [[ $b -gt 5 ]]
        then
            break 2
        fi
        echo "Inner loop: $b "
    done
done