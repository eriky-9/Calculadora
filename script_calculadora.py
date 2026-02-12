'''loop'''
while True:
  '''opção para o calculo'''
  alternativa = input('Escolha uma altenativa(+,-,*,/)ou sair :')
  if alternativa == 'sair':
    print('Encerrando Calculadora')
    break
  '''Pedir os dois numeros para o usuario e converter para decimal'''
  num1 = float(input('Digite o primeiro número: '))
  num2 = float(input('Digite o segundo número: '))
  '''condição de escolha das operação e resultado'''
  if alternativa == '+':
    print('Soma dos números é ',num1 + num2)
  elif alternativa == '-':
    print('Subtração dos números é ',num1 - num2)
  elif alternativa == '*':
    print('Multiplicação dos números é ',num1 * num2)
  elif alternativa == '/':
    print('Divisão dos números é', num1 / num2)
  else:
    print('Erro no calculo,tente novamente')
