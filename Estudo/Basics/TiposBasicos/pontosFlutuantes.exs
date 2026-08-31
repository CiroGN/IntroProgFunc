# Em Elixir, os números de ponto flutuante requerem um decimal depois de pelo menos um dígito;
# estes possuem uma precisão de 64 bits e suportam "e" para números exponenciais:
3.14
# 3.14

.14
# ** (SyntaxError) iex:2: syntax error before: '.'

1.0e-10
# 1.0e-10
