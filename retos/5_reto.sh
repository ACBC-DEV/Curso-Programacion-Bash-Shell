#!/bin/bash
# Modificar el archivo utilityHost.sh para escribir la información solicitada a un archivo de log cuyo nombre será log donde yyyy representa el año, MM el mes, DD el día, HH la hora, mm los minutos y SS los segundos

echo "generando archivo de log"
echo "log-$(date +%Y%m%d%H%M%S).log"
echo "log-$(date +%Y%m%d%H%M%S).log" >log-$(date +%Y%m%d%H%M%S).log
echo "archivo de log generado"
