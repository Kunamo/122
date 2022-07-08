#!/bin/bash

random_number=$((RANDOM%100+1))

echo "Guess a number between 1 and 100"
read number

for i in {1..100}
do
    if [ $number -eq $random_number ]
    then
        echo "You guessed the number!"
        exit 0
    elif [ $number -gt $random_number ]
    then
        echo "Your guess is too high"
    else
        echo "Your guess is too low"
    fi
    read number
done
echo "You guessed the number"
