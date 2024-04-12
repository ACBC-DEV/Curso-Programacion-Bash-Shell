#!/bin/bash
# Programa que permite manejar las utilidades de Postgres

opcion=0
# fedora linux dnf
#Función para instalar postgres
instalar_postgres() {
  echo -e "\nVerificar instalacion de postgres..."
  verifyInstall=$(which psql)
  if [ $? -eq 0 ]; then
    echo -e "\nPostgres ya se encuentra instalado en el equipo"
  else
    read -s -rp "Ingresar contraseña de sudo: " password
    read -s -rp "Ingresar contraseña a utilizar en postgres: " passwordPostgres
    echo "$password" | sudo -S dnf update
    echo "$password" | sudo -S dnf install postgresql postgresql-contrib
    sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$passwordPostgres}';"
    echo "$password" | sudo -S systemctl enable postgresql.service
    echo "$password" | sudo -S systemctl enable postgresql.service
    echo "$password" | sudo -S systemctl start postgresql.service
  fi
  read -n1 -s -rp "Presione [ENTER] para continuar..."
}
desinstalar_postgres() {
  echo -e "\nDesinstalar Postgres..."
  read -s -rp "Ingresar contraseña de sudo: " password
  echo -e "\n"
  echo "$password" | sudo -S systemctl stop postgresql.service
  echo "$password" | sudo -S dnf remove -y postgresql postgresql-contrib
  echo "$password" | sudo -S rm -r /var/lib/postgresql/
  echo "$password" | sudo -S rm -r /etc/postgresql/
  echo "$password" | sudo -S userdel -r postgres
  echo "$password" | sudo -S groupdel postgres
  read -n1 -s -rp "Presione [ENTER] para continuar..."
}
hacer_respaldo() {
  echo -e "\nHacer un respaldo..."
  echo -e "\nDirectorio: $1"
  sleep 3
}

restaurar_respaldo() {
  echo -e "\nRestaurar respaldo..."
  echo -e "\nDirectorio: $1"
  sleep 3
}

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
  read -n1 -rp "Ingrese una opción [1-5]: " opcion

  #Validar la opción ingresada
  case $opcion in
  1)
    instalar_postgres
    ;;
  2)
    desinstalar_postgres
    ;;
  3)
    echo -e "\n"
    read -rp "Directorio de backup: " directorio_backup
    hacer_respaldo $directorio_backup
    ;;
  4)
    echo -e "\n"
    read -rp "Directorio de respaldo: " directorio_respaldo
    restaurar_respaldo $directorio_respaldo
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
