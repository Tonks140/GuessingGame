all: README.md

make README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	date >> README.md
	echo "\" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
