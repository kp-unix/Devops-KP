#Write a script that counts the number of words, lines, and characters in a 
#given text file.

#!/bin/bash


if 
    [ "$#" -ne 1 ]; then
    echo "please provide one filename"
    exit 1
fi

filename="$1"

if 
    [ -f "$filename" ]; then
    echo your file has $(wc -l < $filename) lines
    echo your file has $(wc -w < $filename) words
    echo your file has $(wc -c < $filename) characters
     
else
    echo "filename not found"

fi