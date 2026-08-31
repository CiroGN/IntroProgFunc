# Você está preparado para ficar um pouco confuso? Em Elixir, o operador = é na verdade o nosso operador match,
# comparável ao sinal de igualdade da matemática. Quando usado, a expressão inteira se torna uma equação e
# faz com que Elixir combine os valores do lado esquerdo com os valores do lado direito da expressão.
# Se a comparação for bem sucedida, o valor da equação é retornado. Se não, um erro é lançado. Vejamos a seguir:

x = 1
# 1

# Agora vamos tentar a simples correspondência:
1 = x
# 1
2 = x
# ** (MatchError) no match of right hand side value: 1

# Vamos tentar isso com algumas das coleções que nós conhecemos:
# Listas
list = [1, 2, 3]
# [1, 2, 3]
[1, 2, 3] = list
# [1, 2, 3]
[] = list
# ** (MatchError) no match of right hand side value: [1, 2, 3]

[1 | tail] = list
# [1, 2, 3]
tail
# [2, 3]
[2 | _] = list
# ** (MatchError) no match of right hand side value: [1, 2, 3]

# Tuplas
{:ok, value} = {:ok, "Successful!"}
# {:ok, "Successful!"}
value
# "Successful!"
{ok, value} = {:error}
# ** (MatchError) no match of right hand side value: {:error}
