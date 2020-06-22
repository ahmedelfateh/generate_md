function guess {
    file_num=$(ls | wc -l)
	read guess
    r=[0-9]
    if ! [[ $guess =~ $r ]]
        then echo "Not a number, PLEASE set Numbers only"
    guess
	elif [[ $guess -eq $file_num ]]
	then
		echo "Ok, You guessed it!"
	else
		if [[ $guess -gt $file_num ]]
		then echo "hint, your number is bigger than the right one by: "
		echo $[guess-file_num]
			guess
		else
            echo "hint, your number is smaller than the right one by: "
			echo $[file_num-guess]
			guess
		fi
	fi
}

echo "Guessing the Files, Set the Directory Files Number"
guess