# !/bin/bash
# Programa para revisar declaracion de varialbles 

opcion=0
nombre=acbc

echo "Opcion: $opcion y Nombre: $nombre"

#Export la Varible

export nombre

#Llamar al Next script para recuperar la Varible

./2_variables_2.sh
