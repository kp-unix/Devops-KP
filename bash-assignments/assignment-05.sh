#Create a script that checks if a given file has read, write, and execute permissions for the owner.

#!/bin/bash

echo "enter filename:"
read filename
PERMISSION=$(ls -l "$filename" | awk '{print $1}' | cut -c2-4)

if [ -e "$filename" ]; then
    echo "File exists checking permission for owner..."
    if [ "$PERMISSION" == "rwx" ]; then
        echo "user has read write execute permission for $filename file"
    else
        echo "user does NOT have read write execute permission for $filename file"
    fi
else
    echo "no such file"
fi