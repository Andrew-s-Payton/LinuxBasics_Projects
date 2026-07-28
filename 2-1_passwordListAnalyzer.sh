#! /bin/bash

# Program is to do three things from a list of passwords. Find number of passwords with certain content, show the last 20 passwords, and show and number all passwords with admin in it
tempPath="/usr/share/metasploit-framework/data/wordlists/"

echo "Enter the password file to analyze: "
read tempFile

echo "Enter the content you wish to find"
read tempContent

tempPath=$tempPath$tempFile

tempWC=$(cat $tempPath | grep $tempContent | wc -w)
tempLP=$(tail -n 20 $tempPath) 
tempAD=$(nl $tempPath | grep admin)

echo "
Number of passwords with $tempContent: 
$tempWC

Last 20 passwords of the list: 
$tempLP

Passwords containing admin:
$tempAD"
