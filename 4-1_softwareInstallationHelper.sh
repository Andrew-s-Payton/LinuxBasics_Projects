#! /bin/bash

# Sources:
# https://www.redhat.com/en/blog/arguments-options-bash-scripts - How to use arguements from the command line
# https://www.w3schools.com/bash/bash_conditions.php - How to use conditional if, elif, and else statements
# https://linuxize.com/post/how-to-compare-strings-in-bash/ - How to compare strings

if [ "$1" = "search" ]; then
	apt-cache search $2
elif [ "$1" = "install" ]; then
	sudo apt-get install $2
elif [ "$1" = "remove" ]; then
	sudo apt-get remove $2
else
	echo "Invalid command"
fi
