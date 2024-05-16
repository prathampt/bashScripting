#!/bin/bash

letters=( "A""B""C""D""E" ) # Space will differentiate between the elements...
echo ${letters[@]}

b=${letters:0:2}
echo "${b}"

b=${letters::4}
echo "${b}"

b=${letters:3}
echo "${b}"