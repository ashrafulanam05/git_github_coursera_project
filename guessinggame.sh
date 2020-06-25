#!/usr/bin/env bash
# File: test9.sh

#Function declaration 
#The function finds the number of the files in the directory and returns the answer
#in a variable filenum
function file_num
{
	local filenum=$(find . -maxdepth 1 -exec echo \; | wc -l)

	echo $filenum
}

#Main program

#Input from function is assigned to varialbe numfile
numfile=$(file_num)

#Asking user for input
echo "Please enter a number to guess the number of files in the current directory"

#User reply is stored in variable guess 
read guess

#Loop if the answer provided by the user is not the given number 

while [[ $numfile -ne $guess ]]
do

	if [[ $guess -gt $numfile ]]
	then 
		echo "You guess is far greater than then actual number, please try again"
		read guess
	else 
		echo "You guess is far lower than then actual number, please try again"
		read guess
	fi
done


echo "You entered: $guess, well done this is the correct answer"
