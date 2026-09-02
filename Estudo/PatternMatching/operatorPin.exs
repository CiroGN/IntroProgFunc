# Acabamos de aprender que o operador match manuseia atribuições quando o lado esquerdo da associação é uma variável.
# Em alguns casos este comportamento de reassociação de variável é algo não desejável.
# Para estas situações, nós temos o operador pin: ^.

# Quando fixamos uma variável, nós a associamos ao valor existente ao invés de reassociar a um novo valor.
# Vamos ver como isso funciona:

x = 1
# 1
^x = 2
# ** (MatchError) no match of right hand side value: 2
{x, ^x} = {2, 1}
# {2, 1}
x
# 2

# Elixir 1.2 introduziu suporte para pins em chaves de mapas e cláusulas de função:

key = "hello"
# "hello"
%{^key => value} = %{"hello" => "world"}
# %{"hello" => "world"}
value
# "world"

%{^key => value} = %{:hello => "world"}
# ** (MatchError) no match of right hand side value: %{hello: "world"}

# Um exemplo do uso do pin em uma cláusula de função:

greeting = "Hello"
# "Hello"
greet = fn
  (^greeting, name) -> "Hi #{name}"
  (greeting, name) -> "#{greeting} #{name}"
end
#Fubnction<...> in :erl_eval.expr/5
greet.("Hello", "John")
# "Hi John"
greet.("Mornin", "John")
# "Mornin John"
greeting
# "Hello"

# Note que no exemplo "Mornin'", a reassociação de greeting para "Mornin'" só acontece dentro de uma função.
# Fora da função, greeting continua sendo "Hello".
