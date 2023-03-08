#!/bin/bash

function error_exit {
  echo "$1" > &2   # Imprime el mensaje de error en stderr
  exit 1          # Sale del programa con un estado de salida diferente de cero
}

# Manejador de señal para detectar errores
trap 'error_exit "Error inesperado. Saliendo"' ERR

# Validación de argumentos
if [ $# -ne 1 ]; then
  error_exit "Número incorrecto de argumentos. Se esperaba 1 argumento."
fi

# Si se llega aquí, hay un solo argumento, por lo que se imprime un mensaje de saludo
echo "¡Hola, $1!"