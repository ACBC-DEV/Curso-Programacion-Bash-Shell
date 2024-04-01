#!/bin/bash
# Programa para ejemplificar el uso de los loop

echo "Loops Anidados"
for fil in *; do
  for nombre in {1..4}; do
    echo "Nombre archivo: $fil _ $nombre"
  done
done
