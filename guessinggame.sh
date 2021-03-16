#!/usr/bin/env bash
number=$(ls | wc -l)
guess=-1

function guess {
	echo "Guess how many files are in the directory and then press Enter:"
	read guess
}


while [[ $guess -ne $number ]]
do
	guess
	if [[ $guess -lt $number ]]
	then
		echo "Guess was too low"
	elif [[ $guess -gt $number ]]
	then
		echo "Guess was too high"
	else
		echo "Congratulations, you guessed correctly"
	fi
done
