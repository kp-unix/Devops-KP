# Create a script that takes a process ID as an argument and attempts to 
#terminate that process.

#!/bin/bash

if [ $# -ne 1 ]; then
   echo "need one process ID as argument"

    exit 1
fi

pid=$1

if 
    ps -p "$pid" > /dev/null 2>&1; then
    kill -9 $pid > /dev/null 2>&1;
    echo "$pid has been terminated." 
else
    echo "no such process $pid"
fi

