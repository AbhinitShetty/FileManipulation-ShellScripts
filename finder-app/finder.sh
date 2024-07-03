#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]			# Check the number of input arguments 
then 
	echo Not enough parameters specified
	exit 1
fi 

if [ -d "$filesdir" ]		# Check if the Directory exists
then 
	X=$( ls "$filesdir" | wc -l )			# List the files present in the specified directory | Count the number of files  
	Y=$( grep -R "$searchstr" "$filesdir" | wc -l )	# Recursive search for 'searchstr' in 'filesdir' | Count number of occurences
	echo The number of files are "$X" and the number of matching lines are "$Y"
else 
	echo "$filesdir" does not represent a directory on the filesystem
	exit 1 
fi
 
