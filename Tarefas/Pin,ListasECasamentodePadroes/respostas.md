# Respostas

## A) Porque em:

```elixir
iex(1)> x = 1
1
iex(2)> {x, ^x} = {2, 1}
{2, 1}
```

## O x passa a valer 2?

Pois em {x, ^x}, a primeira ocorrência de x não possui o "^" antes, ou seja, não fica fixa ao valor antes atribuído. Como vai acontecer um match com {2, 1}, x é religado (rebinding) ao valor 2. O valor 1 em si não é alterado, pois em Elixir os dados são imutáveis, apenas o nome x passa a apontar para 2. Quanto ao ^x, o pin usa o valor que x tinha antes do match (1) e serve como um verificador: ele apenas confere se o segundo elemento é igual a 1, sem receber um novo valor. Por isso o match dá certo e x passa a valer 2. Se fosse {x, ^x} = {2, 2}, ocorreria um MatchError, pois ^x continua valendo 1.

## B) Como listas são implementadas internamente em Elixir e Erlang?

Elixir e Erlang implementam listas como listas simplesmente encadeadas, onde cada elemento é uma célula com uma cabeça (head) e uma cauda (tail), terminando em uma lista vazia, por exemplo [1 | [2 | [3 | []]]]. Isso significa que acessar o tamanho da lista é uma operação que rodará em tempo linear (O(n)). Por essa razão, é normalmente mais rápido inserir um elemento no início do que no final, pois inserir no final (com ++) cria uma cópia da lista inteira, enquanto inserir no início apenas aponta para a lista já existente como cauda.

## C) No que o casamento de padrões difere de um comando de atribuição.

No casamento de padrões há atribuições, porém vai além de simplesmente atribuir. Nele, como o nome já diz, envolve padrões: o operador = compara um padrão (lado esquerdo) com um valor (lado direito) e liga as variáveis necessárias para que os dois lados fiquem iguais. Por exemplo, uma tupla com variáveis {a, b, c} pode receber {1, 2, 3}, o que resulta em a = 1, b = 2 e c = 3, enquanto em uma atribuição comum o valor é apenas guardado em uma variável, como a = {1, 2, 3}. Outra coisa que difere é que o casamento pode falhar: se os dois lados não puderem ficar iguais, é lançado um MatchError. Por isso podemos ter valores fixos do lado esquerdo, como 1 = x, que só funciona se x valer 1. Além disso, como em Elixir temos o pin (^), se usarmos como prefixo de uma variável no pattern matching, conseguimos analisar no match se o valor é igual ao valor que a variável pinada já tinha; caso contrário, é lançado um MatchError.

## Fontes

[elixir.hexdocs.pm/pattern-matching.html#the-pin-operator](https://elixir.hexdocs.pm/pattern-matching.html#the-pin-operator)

[elixirschool.com/pt/lessons/basics/collections](https://elixirschool.com/pt/lessons/basics/collections)

[www.erlang.org/doc/system/listhandling.html](https://www.erlang.org/doc/system/listhandling.html)
