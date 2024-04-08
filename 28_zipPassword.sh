#!/bin/bash
# Programa para ejemplificar el empaquetamiento con password utilixando zip

echo "Empaquetar todos los scripts de la carpeta shellCourse con zip y asignarle una clave de seguridad"

zip -e shellCourse.zip *.sh
