answer=0

function ask_question {
	echo "How many files are there in the current directory?"
}

echo "Hello there!"
files=$(ls | wc -l)
ask_question
read answer
while [[ $answer -ne $files ]]
do
	if [[ $answer -gt $files ]]
	then
		echo "You're aiming too high."
	elif [[ $answer -lt $files ]]
	then
		echo "You've low expectations."
	fi
	echo "Lets try again."
	ask_question
	read answer
done
echo "Congratulations! You got it right."
