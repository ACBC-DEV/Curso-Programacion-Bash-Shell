# ! /bin/bash
# Programa para revisar los Tipos de Operadores 

numA=10
numB=4
echo "Operadoes Arimetions"
echo "Numberos A=$numA y B=$numB "
echo "Sumar A+B ="$(($numA + $numB))
echo "Restar A-B ="$(($numA - $numB))
echo "Dividir A/B ="$(($numA/$numB))
echo "Multiplicar A*B ="$(($numA*$numB))
echo "Residuo A%B ="$(($numA%$numB))


echo -e "\nOperadoes Relacionales "
echo "Numberos A=$numA y B=$numB "
echo "A > B ="$(($numA > $numB))
echo "A < B ="$(($numA < $numB))
echo "A >= B ="$(($numA >= $numB))
echo "A <= B ="$(($numA <= $numB))
echo "A == B ="$(($numA == $numB))
echo "A != B ="$(($numA != $numB))


#echo -e "\nOperadoes Asignacion"
#echo "Numberos A=$numA y B=$numB "
#echo "Sumar A +=B"$((numA += numB))
#echo "Restar A-=B"$((numA -= numB))
#echo "Dividir A/=B"$(($numA/=$numB))
#echo "Multiplicar A*=B "$(($numA*=$numB))
#echo "Residuo A%=B "$(($numA%=$numB))

