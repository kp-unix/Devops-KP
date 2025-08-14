#Print only the lines from data.txt where the second field is a number greater 
#than 10. Use awk command.

#!/bin/bash

FILE=/home/kp/dump/data.txt

if [ -f "$FILE" ]; then
    awk '$2 > 10 { print $0 }' "$FILE"
else
    echo "file is missing"
fi