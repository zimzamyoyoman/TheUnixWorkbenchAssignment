function guessinggame { 
	local numfiles=$(ls -l | wc -l)
	local userguess=-1
	
	while [[ $userguess -ne $numfiles ]]
	do
		echo "Guess the number of files."
		read userguess
		
		if [[ $userguess -gt $numfiles ]]
		then 
			echo "You guessed too high!"
		elif [[ $userguess -lt $numfiles ]]
		then 
			echo "You guessed too low!"
		fi 
	done 

	echo "You guessed correctly! Congratulations!"

}

guessinggame
	