# Elixir provê os operadores booleanos ||, &&, e !. Estes suportam qualquer tipo:
-20 || true
# -20

false || 42
# 42

42 && true
# true

20 && nil
# nil

!42
# false

!false
# true

# No Elixir, o conceito de “veracidade” é muito simples: apenas false e nil são considerados falsos.
# Qualquer outro valor, incluindo 0, "" (string vazia) e [] (lista vazia), é considerado verdadeiro.
# Essa regra estrita permite que operadores booleanos como ||, && e ! funcionem de maneira previsível com qualquer tipo de dado para lógica condicional.


# Há três operadores adicionais cujo primeiro argumento deve ser um booleano (true e false):
true and 42
# 42

false or true
# true

not false
# true

42 and true
# ** (BadBooleanError) expected a boolean on left-side of "and", got: 42

not 42
# ** (ArgumentError) argument error
# Nota: O and e or do Elixir são mapeados para andalso e orelse do Erlang.
