#!/bin/bash

error_handler(){
    echo "Error: ($?) $1"
    exit 1
}

# echo "Hola mundo" || error_handler "bad_command failed, Line: ${LINENO}"

bad_command || error_handler "bad_command failed, Line: ${LINENO}"