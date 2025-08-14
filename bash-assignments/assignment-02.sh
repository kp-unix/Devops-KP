#Create a script that prompts the user for a filename, 
#then checks if the file exists and whether it is a regular file or a directory.

#!/bin/bash


echo "Please enter a filename:"
read filename

if
    [ -e "$filename" ]; then
    echo "$filename exists"


    if [ -f "$filename" ]; then
    echo "$filename is a regular file"

    elif
       [ -d "$filename" ]; then
    echo "$filename is a directory"

    else
        echo "$filename" is not a regular file or dir.
   
    fi
else
   echo "$filename does not exist"
 
fi