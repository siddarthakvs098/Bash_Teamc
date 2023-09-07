#!/bin/bash
echo "$1"
if [ -e "$1" ]; then
       echo " $1 exits "

      if [ -f "$1" ]; then
	     echo "$1 is a regular file"
	elif [ -d "$1" ]; then
	      echo "$1 is a directory"	
	      exit 1
       else
	echo "$1 is other file type"
	exit 2
	fi
else 
	echo "$1 does not exit "	
fi

echo "details of the file:"

echo $?

ls "$1" -l
