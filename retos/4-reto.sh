#!/bin/bash

# Crear un menú con las siguientes opciones:
# Procesos Actuales,
# Memoria Disponible,
# Espacio en Disco,
# Información de Red,
# Variables de Entorno Configuradas,
# Información Programa
# Backup información
# Ingrese una opción.
# Posterior a esto vamos a recuperar la opción ingresada, validarla e imprimir la opción y el título de acuerdo a lo ingresado
#!/bin/bash
echo "Menú"
echo "1. Procesos Actuales"
echo "2. Memoria Disponible"
echo "3. Espacio en Disco"
echo "4. Información de Red"
echo "5. Variables de Entorno Configuradas"
echo "6. Información Programa"
echo "7. Backup información"
while true; do

      read -p "Ingrese una opción: " opcion

      case $opcion in
      1)
            echo "Procesos Actuales"
            break
            ;;
      2)
            echo "Memoria Disponible"
            break
            ;;
      3)
            echo "Espacio en Disco"
            break
            ;;
      4)
            echo "Información de Red"
            break
            ;;
      5)
            echo "Variables de Entorno Configuradas"
            break
            ;;
      6)
            echo "Información Programa"
            break
            ;;
      7)
            echo "Backup información"
            break
            ;;
      *)
            echo "Opción no válida. Intente de nuevo."
            ;;
      esac
done
