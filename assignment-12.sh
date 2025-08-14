#.Develop a script that backs up a specific directory to a compressed 
#archive, including a timestamp in the filename.

#!/bin/bash

DIRNAME=/etc/
DEST=/home/kp
DATE=$(date +%Y%m%d_%H%M%S)
ARCHIVE_NAME="${DEST}/archive_var_${DATE}.tar.gz"

if [ ! -d "$DIRNAME" ]; then
    echo "dir not found"
    exit 1
fi


tar -cvzf "$ARCHIVENAME" "$DIRNAME"
echo "dir backup completed"
