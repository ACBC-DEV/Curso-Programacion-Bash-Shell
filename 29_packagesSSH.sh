#!/bin/bash
# Programa para ejemplificar la forma de como transferir por la red utilizando el comando rsync, ssh y empaquetando con tar

echo "Empaquetar todos los scripts de la carpeta shellCourse y transferirlos por la red a otro equipo con el comando rsync"

read -rp "Ingrese el host: " host
read -rp "Ingrese el usuario: " usuario
echo -e "\nEnviando archivos..."
rsync -avz $(pwd) $usuario@$host:/home/$usuario/
