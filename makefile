create_readme:
	echo "Peer-graded Assignment: Bash, Make, Git, and GitHub\n" > README.md
	echo "\n**Make Date:** $$(date)\n" >> README.md
	echo "\n**Lines of Code in guessinggame.sh:** $$(wc -l < guessinggame.sh | xargs)" >> README.md

clean:
	rm README.md
