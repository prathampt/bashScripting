#!/bin/bash

read -p "What is your name? " name

if [[ -z ${name} ]]
then
    echo "Please enter your name!"
else
    echo "Hi there ${name}"
fi

# Here is another example of an if statement which would check your
# current User ID and would not allow you to run the script as the root user

if (( $EUID == 0 )); then
    echo "Please do not run as root"
    exit
fi

# Use of elif...

read -p "Enter a number: " num

if [[ $num -gt 0 ]] ; then
    echo "The number is positive"
elif [[ $num -lt 0 ]] ; then
    echo "The number is negative"
else
    echo "The number is 0"
fi

### Switch Case...

read -p "Enter the name of your car brand: " car

case $car in
    Tesla)
        echo "${car}'s car factory is in the USA."
        ;;
    BMW | Mercedes | Audi | Porsche)
        echo "${car}'s car factory is in Germany."
        ;;
    Toyota | Mazda | Mitsubishi | Subaru)
        echo "${car}'s car factory is in Japan."
        ;;
    *) # This is default...
        echo "${car} is an unknown car brand"
        ;;
esac