#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if else else if

echo "Ejemplo Sentencia If -else"
read -p "Indique cual es su edad: " edad
if [ $edad -lt 18 ]; then
  echo "La persona es adolescente"
elif [ $edad -ge 18 ] && [ $edad -le 64 ]; then
  echo "La persona es adulta"
else
  echo "La persona es adulto mayor"
fi
