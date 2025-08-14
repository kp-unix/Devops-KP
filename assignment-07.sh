# Write a script that lists all currently running processes and their PIDs.

#!/bin/bash

echo "Currently running processes and their PIDs:"
ps -eo pid,comm 