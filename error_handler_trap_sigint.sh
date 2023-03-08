#! usr/bin/bash

# Typically this is used to catch signals such as SIGINT 
# which is raised when you press the Ctrl+C key combinatio
trap "echo -e '\nTerminated by Ctrl+c'; exit" SIGINT

counter=0

while true
do 
    echo "Loop number:" $((++counter))
    sleep 1
done