# Develop a script that displays disk usage information for all mounted filesystems.

#!/bin/bash

df -h | awk '{print $1, $2, $3, $4, $5, $6}' | while read line; do
    echo "Filesystem: $line"
done