#!/bin/bash
# Programa para Ejemplificar como Capturar la Informacion del Usuario utilizando el comando read y validar la informacion ingresada

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de informacion de solo un caracter
read -n1 -p "Ingresar una opcion: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del Backup: " backupName
echo -e "\n"
echo "Opcion: $option, Nombre del Backup: $backupName"
read -s -p "Clave: " clave
echo "Clave: $clave"
