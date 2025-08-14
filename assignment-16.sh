#Print lines from data.txt that contain a specific pattern, and then print a 
#custom message for each matched line.

#!/bin/bash

FILE=/home/kp/dump/data.txt
PATTERN="safarchand"

if [ -f "$FILE" ]; then
    grep "$PATTERN" "$FILE" | while read line; do
        echo "$line"
        echo "Found a matching line!"
    done
else
    echo "file is missing"
fi
