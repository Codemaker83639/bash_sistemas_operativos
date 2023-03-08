#!/usr/bin/env bash

# trap "echo Hello World" SIGINT
# Revertir el ctrl c hello world
# trap - SIGINT


trap 'echo "Control-C cannot terminate this script."' INT 
trap 'echo "Control-\ cannot terminate this script."' QUIT 
trap 'echo "Control-Z cannot terminate this script."' TSTP
trap 'echo "Other cannot terminate this script."' ERR


echo "Enter any string (type 'end' to exit)." 
while (( 1 )) 
do 
       echo -n "Rolling..." 
       read string
      
       if [[ "$string" = "end" ]]; then 
           break  
        else 
            loco_command # error, command not found
       fi 
done

echo "Exiting normally"