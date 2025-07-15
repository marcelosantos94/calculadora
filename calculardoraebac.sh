#!/bin/bash

echo "Calculadora Simples"
echo "Operações disponíveis: +, -, *, /"

read -p "Digite o primeiro número: " num1
read -p "Escolha a operação (+, -, *, /): " operacao
read -p "Digite o segundo número: " num2

case $operacao in
  +) resultado=$(echo "$num1 + $num2" | bc);;
  -) resultado=$(echo "$num1 - $num2" | bc);;
  \*) resultado=$(echo "$num1 * $num2" | bc);;
  /) 
    if [ "$num2" == "0" ]; then
      echo "Erro: Divisão por zero!"
      exit 1
    fi
    resultado=$(echo "scale=2; $num1 / $num2" | bc)
    ;;
  *) echo "Operação inválida"; exit 1;;
esac

echo "Resultado: $resultado"


