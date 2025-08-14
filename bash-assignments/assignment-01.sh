#Write a script that creates a new directory, then creates three empty files inside it,
# and finally lists the contents of the directory.

#!/bin/bash

mkdir new_dir
DIR=new_dir
touch $DIR/empty{1..3}.log
echo "listing files under $DIR"
ls -l $DIR