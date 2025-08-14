#Develop a script that compares two strings provided as arguments and 
#indicates if they are equal or different.

#!/bin/bash

if [ $# -ne 2 ]; then
    echo "need two strings as arguments"
exit 1
fi

string1=$1
string2=$2

if [ "$string1" == "$string2" ]; then
    echo "the strings are equal."
else
    echo "the strings are different."
fi