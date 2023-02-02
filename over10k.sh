#!/bin/bash

# Check for the directory argument
if [ "$#" -ne 1 ]; then
	    echo "Usage: $0 directory"
	        exit 1
fi

directory=$1

# Loop through each file in the directory
for file in $directory/*; do
	  # Check if the file has more than 10,000 characters
	    if [ $(wc -c < "$file") -gt 10000 ]; then
		        echo "$file"
			  fi
		  done

