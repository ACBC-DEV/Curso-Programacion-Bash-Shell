#!/bin/bash
# Programa para ejemplificar el uso de los if anidados
echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"

if [ $notaClase -ge 6 ]; then
  echo "El alumno aprueba la materia"
  read -p "Si va a continuar estudiando en el siguiente nivel (s/n): " continua
  if [ $continua == "s" ]; then
    echo "Bienvenido al siguiente nivel"
  else
    echo "Gracias por haber participado"
  fi
else
  echo "El alumno reprueba la materia"
fi
