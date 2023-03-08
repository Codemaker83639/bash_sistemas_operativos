#!/bin/bash

while true; do
    read -p "Introduzca el número: " num
    
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then
        echo "Error: '$num' no es un número. Por favor, introduzca un número entero positivo."
        continue
    fi
    
    if [[ $num -le 1 ]]; then
        echo "$num no es primo."
        break
    fi
    
    primo=true
    
    for ((i=2; i<=$num/2; i++)); do
        if [[ $(($num % $i)) -eq 0 ]]; then
            primo=false
            break
        fi
    done
    
    if $primo; then
        echo "$num es primo."
    else
        echo "$num no es primo."
    fi
    
    break
done