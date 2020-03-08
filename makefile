all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# The Guessing Game" > README.md
	echo "## Created by **Rohan Sethi** on -" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "### Instructions :- " >> README.md
	echo "1. This is a simple game where the user has to guess the number of files in the current dirextory." >> README.md
	echo "2. Hints are provided at each guess as to whether it was too high or too low, in order to aid the user." >> README.md
	echo "3. The game ends once the user guesses correctly." >> README.md
	echo "" >> README.md
	echo "*The code file contains the following number of lines -*" >> README.md
	wc -l guessinggame.sh >> README.md
	echo "" >> README.md
	echo "## I sincerely hope you enjoy the game." >> README.md
	
clean:
	rm README.md
