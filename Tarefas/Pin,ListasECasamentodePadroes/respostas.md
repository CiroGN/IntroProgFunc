# Respostas

## A) Porque em:

```Erlang
iex(1)> x = 1
1
iex(2)> {x, ^x} = {2, 1}
{2, 1}
```

## O x passa a valer 2?

Pois em {x, ^x}, a primeira chamada de x, não o deixa fixo ao valor antes atribuido, ou seja, como vai acontecer um match com {2, 1}, o valor de x é alterado para 2 pois a chamada não possui o "^" antes. Quanto ao ^x, o pin serve como um verificador que previne a alteração do valor para a chamada de x neste caso, mas não evita que todas as outras chamadas de x sejam proibidas de receber um novo valor, a não ser que todos estes tenham o prefixo "^", apenas a segunda chamada não pode ser atribuida a um novo valor.

## B) Como listas são implementadas internamente em Elixir e Erlang?

Elixir e Erlang implementam listas como listas encadeadas. Isso significa que acessar o tamanho da lista é uma operação que rodará em tempo linear. Por essa razão, é normalmente mais rápido inserir um elemento no início do que no final, a não ser que queira criar muitas cópias da lista crescente resultante.

## C) No que o casamento de padrões difere de um comando de atribuição.

no casamento de padrões há atribuições, porém vai além de simplesmente atribuir, nele, como pelo nome ja diz, envolve padrões, seja atribuir valores a uma sequência (que é um padrão), ou seja, uma lista com variáveis {a, b, c} pode receber {1, 2, 3}, o que resulta em a = 1, b = 2 e c =3, onde que em atribuição poderiamos apenas ter variáveis a, b e c com cada uma sendo a = {1, 2, 3}, b = {1, 2, 3}, etc... Outra coisa que difere é possivelmente a análise, como em Elixir temos o pin(^), se usarmos como prefixo antes de uma variavel sofrer o pattern matching, conseguimos analizar no match se o valor a ser atribuido é igual ao valor da variável pinnada chamada, caso contrário, retorna erro.

## Fontes

[elixir.hexdocs.pm/pattern-matching.html](https://elixir.hexdocs.pm/pattern-matching.html#the-pin-operator)#the-pin-operator

[elixirschool.com/pt/lessons/basics/collections](https://elixirschool.com/pt/lessons/basics/collections)

[www.erlang.org/doc/system/listhandling.html](https://www.erlang.org/doc/system/listhandling.html)
