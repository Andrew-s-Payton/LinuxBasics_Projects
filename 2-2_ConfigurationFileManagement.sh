#! /bin/bash

# Script is to find a specific configuration file, display the first and last ten lines, searches for keywords like "output", and replaces all instances of a term

# First print off all configuration files and number them 

echo "Enter the configuration file and path you want to modify:"
read tempFile

if [[ -z "$tempFile" ]]; then
	tempFile=/etc/snort/snort.lua
fi

echo "First ten lines:
!--------------------!"
head $tempFile
echo "
Last ten lines:
!--------------------!"
tail $tempFile

nl $tempFile | grep output

sed s/output/Output/g $tempFile > projectBin/2-2_confFiles.txt 
