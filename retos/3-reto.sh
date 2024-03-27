#!/bin/bash
# Solicitar que se ingrese un valor del 1 al 5.

# Según el valor ingresado, hacer la validación utilizando las condicionales e imprimir el resultado.

# Construir expresiones de validación numéricas, cadenas y archivos según la opción ingresada.

read -p "Ingrese un valor del 1 al 5: " valor

if [ $valor -gt 0 ] && [ $valor -lt 6 ]; then
  echo "El valor ingresado es correcto y es: $valor"
else
  echo "El valor ingresado no es correcto"
fi
