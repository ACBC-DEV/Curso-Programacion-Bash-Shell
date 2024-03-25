#!/bin/bash
# Programa que solicita informacion de nombre, apellido, edad, direccion, numero telefonico, e imprime toda la informacion
read -p "Por favor ingrese su nombre: " nombre
read -p "Por favor ingrese su apellido: " apellido
read -p "Por favor ingrese su edad: " edad
read -p "Por favor ingrese su direccion: " direccion
read -p "Por favor ingrese su numero telefonico: " telefono
echo -e "\n"
echo "Nombre: $nombre"
echo "Apellido: $apellido"
echo "Edad: $edad"
echo "Direccion: $direccion"
echo "Telefono: $telefono"
