#!/bin/bash

echo "Calculadora Bash"

# lê o primeiro numero
read -p "Digite o primeiro número: " num1

# lê a operação que será feita
echo "Escolha a operação:"
echo "+ , - , * ,/"
read -p "Operação: " op

# lê o segundo numero
read -p "Digite o segundo número: " num2
# O -l carrega a biblioteca matemática e o scale=2 define casas decimais
case $op in
    +) resultado=$(echo "$num1 + $num2" | bc -l) ;;
    -) resultado=$(echo "$num1 - $num2" | bc -l) ;;
    *) resultado=$(echo "$num1 * $num2" | bc -l) ;;
    /) 
        if [ "$num2" == "0" ]; then
            resultado="Erro: Divisão por zero"
        else
            resultado=$(echo "scale=2; $num1 / $num2" | bc -l)
        fi
;;
    *) resultado="Operação inválida" ;;
esac

echo "Resultado: $resultado"

