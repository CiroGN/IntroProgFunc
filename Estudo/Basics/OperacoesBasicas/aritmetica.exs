# Elixir suporta os operadores básicos +, -, *, e / como era de se esperar.
# É importante lembrar que / sempre retornará um número de ponto flutuante:

2 + 2
# 4

2 - 1
# 1

2 * 5
# 10

10 / 5
# 2.0

# Se você precisa de uma divisão inteira ou o resto da divisão, Elixir vem com duas funções úteis para conseguir isso:

div(10, 3)
# 3

rem(10, 3) # resto
# 1
