# Elixir vem com todos os operadores de comparação que estamos acostumados a usar: ==, !=, ===, !==, <=, >=, < e >.
1 > 2
# false

1 != 2
# true

2 == 2
# true

2 <= 3
# true

# Para comparação estrita de inteiros e pontos flutuantes usa-se ===:
2 == 2.0
# true

2 === 2.0
# false

# Uma característica importante do Elixir é que qualquer tipo pode ser comparado; isto é particularmente útil em ordenação.
# Não precisamos memorizar a ordem de classificação, mas é importante estar ciente disto:
# number < atom < reference < function < port < pid < tuple < map < list < bitstring
# Isto pode levar a algumas comparações interessantes e válidas, que você pode não encontrar em outras linguagens:
:hello > 999
# true

{:hello, :world} > [1, 2, 3]
# false
