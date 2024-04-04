#!/bin/bash
# Progrma para ejemplificar como escribir en un archivo

echo "Escribir en un archivo"

#echo $2 >>$1
echo "Valores escritos con el comado echo" >>$1

# Adicion de informacion al archivo
#echo Archivo $1 creado, con la informacion $2
cat <<EOM >>$1
$2
EOM
