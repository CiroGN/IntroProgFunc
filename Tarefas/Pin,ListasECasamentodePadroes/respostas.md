# Respostas

## A)

Pois em {x, ^x}, a primeira chamada de x, não o deixa fixo ao valor antes atribuido, ou seja, como vai acontecer um match com {2, 1}, o valor de x é alterado para 2 pois a chamada não possui o "^" antes. Quanto ao ^x, o pin serve como um verificador que previne a alteração do valor para a chamada de x neste caso, mas não evita que todas as outras chamadas de x sejam proibidas de receber um novo valor, a não ser que todos estes tenham o prefixo "^", apenas a segunda chamada não pode ser atribuida a um novo valor.

## B)

Elixir e Erlang implementam listas como listas encadeadas. Isso significa que acessar o tamanho da lista é uma operação que rodará em tempo linear. Por essa razão, é normalmente mais rápido inserir um elemento no início do que no final, a não ser que queira criar muitas cópias da lista crescente resultante.

## C)





## Fontes

[elixir.hexdocs.pm/pattern-matching.html](https://elixir.hexdocs.pm/pattern-matching.html#the-pin-operator)#the-pin-operator

[elixirschool.com/pt/lessons/basics/collections](https://elixirschool.com/pt/lessons/basics/collections)

[www.erlang.org/doc/system/listhandling.html](https://www.erlang.org/doc/system/listhandling.html)
