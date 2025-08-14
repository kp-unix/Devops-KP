# Develop a script that displays the current date, time, and your username. 

#!/bin/bash
DATE="$(date)"
USERNAME="$(whoami)"

echo "Current date and time: $DATE"
echo "Your username: $USERNAME"