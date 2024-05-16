#!/bin/bash

clear
echo
read -p "How many characters you would like the password to have? " pass_lenght
echo

for i in {1..10}
do 
    (tr -cd '[:alnum:]' < /dev/urandom | fold -w${pass_lenght} | head -n 1)
done

echo "$pass_output"

echo "Choose any from above!"