.PHONY: all clean

all: README.md

README.md:
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "## Project Details" >> README.md
	@echo "- **Date and Time**: $$(date)" >> README.md
	@echo "- **Number of lines in guessinggame.sh**: $$(wc -l < guessinggame.sh)" >> README.md
	@echo "" >> README.md
	@echo "## Description" >> README.md
	@echo "This is a Bash shell script guessing game where the user tries to guess the number of files in the current directory." >> README.md

clean:
	rm -f README.md