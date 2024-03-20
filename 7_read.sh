#!/bin/bash
# Programa para Ejemplificar como Capturar la Informacion del Usuario utilizando el comando read

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opcion: " option
read -p "Ingresar el nombre del archivo del Backup: " backupName
echo "Opcion: $option, Nombre del Backup: $backupName"
