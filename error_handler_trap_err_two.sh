#!/usr/bin/env bash


exec 2> /dev/null 
trap 'echo "You did not enter an integer."' ERR

while (( 1 )) 
do 
    echo -n "Enter any number ( -1 to exit ): " 
    read num

    [ "$num" -eq "$num" ] 

    status=$?

    if (( num == -1 )); then 
        break
    elif (( status == 0 )); then 
        echo "Mult $num is $(( num * num ))" 
    fi 
done

echo "Exiting normally"