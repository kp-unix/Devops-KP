#Write a script to replace all occurrences of one word with another 
#throughout data.txt.

#!/bin/bash

FILE=/home/kp/dump/data.txt

if [ -f $FILE ]; then
  sed -i 's/apple/safarchand/g' $FILE
else
    echo "file is missing"
fi

cat $FILE