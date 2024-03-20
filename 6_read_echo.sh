#!/bin/bash
# Programa para Ejemplificar como Capturar la Informacion del Usuario utilizando el comando echo, read y $REPLY

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opcion: "
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del Backup: "
read
backupName=$REPLY
echo "Opcion: $option, Nombre del Backup: $backupName"
