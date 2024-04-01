#!/bin/bash
# Programa para ejemplificar el uso de los break y continue

echo "Sentencias break y continue"
for fil in *; do
  for col in {1..2}; do
    if [[ $fil == 10* ]] || [[ $fil = "15_" ]]; then
      break
    elif [[ $fil == 4* ]]; then
      continue
    else
      echo "Fila: $fil, Columna: $col"
    fi
  done
done
