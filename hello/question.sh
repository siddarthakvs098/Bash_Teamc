#!/bin/bash

read  -p " Enter the name of the file or directory: " name
if [ -e "$name" ]; then
       echo " $name exits "

      if [ -f "$name" ]; then
	     echo "$name is a regular file"
	elif [ -d "$name" ]; then 
	      
	       echo "$name is a directory"
       else
	echo "$name is other file"
	fi
else 
	echo "$name does not exit "	
fi

echo "details of the file:"

ls -l "$name"
