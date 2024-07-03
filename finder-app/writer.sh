#!/bin/bash 

writefile=$1	# Full path (incl. file name)
writestr=$2	# String to be written in the file

if [ $# -lt 2 ]				# Check for number of input arguments
then
	echo Not enough parameters specified
	exit 1
fi 

FILE=$( basename "$writefile" )		# Extracting filename from the complete path
DIR=$( dirname "${writefile}")		# Extracting directory path excluding just the filename from the complete path
if [ -d $DIR ]
then 
	echo $DIR created
	touch $writefile
	echo $writestr > $writefile
else 
	mkdir -p $DIR
	touch $writefile
        echo $writestr > $writefile
fi

if [ ! -f $filename ]			# Check if the file was successfully created
then 
	echo No file created
	exit 1
fi
