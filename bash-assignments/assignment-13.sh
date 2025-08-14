#.Write a script that schedules a task to run at a specific time using cron.

#!/bin/bash

JOB='echo Hello'
USER=$(whoami)
SCHEDULE="* 1 * * *"
CRONFILE="/var/spool/cron/crontabs/kp"

echo "$SCHEDULE $USER $JOB" | sudo tee "$CRONFILE" > /dev/null

crontab -l