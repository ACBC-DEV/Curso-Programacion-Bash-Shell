#!/bin/bash
# Programa que permite manejar las utilidades de Postgres

opcion=0

while :; do
  #Limpiar la pantalla
  clear
  #Desplegar el menú de opciones
  echo "_________________________________________"
  echo "PGUTIL - Programa de utilidad de Postgres"
  echo "_________________________________________"
  echo "              MENU PRINCIPAL             "
  echo "_________________________________________"
  echo "1. Instalar Postgres"
  echo "2. Desinstalar Postgres"
  echo "3. Hacer un respaldo"
  echo "4. Restaurar respaldo"
  echo "5. Salir"

  #Leer los datos del usuario - capturar información
  read -n1 -p "Ingrese una opción [1-5]: " opcion

  #Validar la opción ingresada
  case $opcion in
  1)
    echo -e "\nInstalar Postgres..."
    sleep 3
    ;;
  2)
    echo -e "\nDesinstalar Postgres..."
    sleep 3
    ;;
  3)
    echo -e "\nHacer un respaldo..."
    sleep 3
    ;;
  4)
    echo -e "\nRestaurar respaldo..."
    sleep 3
    ;;
  5)
    echo -e "\nSalir del programa"
    exit 0
    ;;
  *)
    echo -e "\nOpción no válida"
    sleep 1
    continue
    ;;
  esac
done
