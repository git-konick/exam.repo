#!/usr/bin/env bash
# File: guessinggame.sh

# Get the number of files in the current directory
num_files=$(ls -1 | wc -l)

# to evaluate a user guess
function guess {

	if ! [[ $slv =~ ^[0-9]+$ ]]
        then
        echo "wrong entry, enter a number"

	elif [[ $num_files -eq $slv ]]
	then
	echo "Congratulations!"

	elif [[ $num_files -gt $slv ]] 
	then
	echo "Your guess is too low."

	elif [[ $num_files -lt $slv ]]
	then
	echo "Your guess is too high."

	fi

}
 # Loop - breaks if = 0 
	while [[ $num_files -ne $slv ]]
do

	read -p "How many files are in the current directory: " slv
	echo $(guess $num_files $slv)

done
