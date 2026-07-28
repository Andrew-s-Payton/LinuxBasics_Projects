#! /bin/bash

# Script is to find a specific configuration file, display the first and last ten lines, searches for keywords like "output", and replaces all instances of a term

# First print off all configuration files and number them 

echo "Enter the configuration file you want to modify:"
read tempFile

# Finds all configuration and lua files, 2>/dev/null meaning void all error messages and save it in a new location
tempConf=$(find /etc -type f -name "*lua*" 2>/dev/null)
tempConf=$(find /etc -type f -name "*conf*" 2>/dev/null)

if [[ -z "$tempFile" ]]; then
	echo "$tempConf" | nl
	echo "Enter number of file:"
	read -r tempNum
	echo $tempNum
	tail -n+$tempNum $tempConf | head -n 1
fi

echo $tempFile
