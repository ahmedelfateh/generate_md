README.md: guessinggame.sh
	touch README.md
	echo "# The Unix Workbench course assignment" >> README.md
	echo "## Bash, Make, Git, and GitHub" >> README.md
	echo "\n- Make date: " >> README.md
	date >> README.md
	echo "\n- Guessing Game Number of lines: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md