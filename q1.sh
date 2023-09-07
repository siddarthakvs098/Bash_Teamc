#!/bin/bash

 

# Prompt the user for a file or directory name

read -p "Enter the name of a file or directory: " input_name

 

# Check if the input exists

if [ -e "$input_name" ]; then

    # Check if it's a regular file

    if [ -f "$input_name" ]; then

        echo "$input_name is a regular file."

    # Check if it's a directory

    elif [ -d "$input_name" ]; then

        echo "$input_name is a directory."

    # If it's not a regular file or directory, report as another type

    else

        echo "$input_name is another type of file."

    fi

 

    # Perform an 'ls' command with long listing option

    echo "Listing details of $input_name:"

    ls -l "$input_name"

else

    echo "File or directory '$input_name' does not exist."

fi
