#!/bin/bash
# Programa para ejemplificar el uso de expresiones codicionales
read -rp "Ingrese su edad: " edad
read -rp "Ingrese su país: " pais
read -rp "Ingrese el path de un archivo: " pathArchivo

echo -e "\nExpresiones condicionales con números"
if [ "$edad" -lt 10 ]; then
  echo "La persona es un niño o niña"
elif [ "$edad" -ge 10 ] && [ "$edad" -le 17 ]; then
  echo "La persona es un adolescente"
else
  echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones condicionales con números"
if [ "$pais" == "EEUU" ]; then
  echo "La persona es estadounidense"
elif [ "$pais" == "Ecuador" ] || [ "$pais" == "Colombia" ]; then
  echo "La persona es de Sudamérica"
else
  echo "Se desconoce la nacionalidad"
fi

echo -e "\nExpresiones condicionales con archivos"
if [ -d "$pathArchivo" ]; then
  echo "El directorio $pathArchivo existe"
else
  echo "El directorio $pathArchivo no existe"
fi
