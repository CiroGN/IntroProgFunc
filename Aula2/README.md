# Class 2

- 25-August-2026

## Review

[aula 1](../01.md)

## Links

<https://elixirschool.com/en>

## Videos

### [1. Basic concepts for functional programming](https://www.youtube.com/watch?v=wTPfqpbFPQk&list=PLGj5ZUU3H99SAVv_kSOAkSxpokAXb7fHN) - 15 minutes


- [Notes](../../../2022/01_introduction.md)

#### Content

- Values
- Sets
- Properties
- Relations
- Tuples
- Functions (pure and impure) vs. Mathematics functions

#### Docs

- [Carnielli-Epstein on Functions](../../../../documents/Carnielli-Epstein-Functions_compressed.pdf)

#### To add

- Non-determinism

### [2. Basic concepts for functional programming 2: Arity and Types](https://www.youtube.com/watch?v=saYk2hGb108&list=PLGj5ZUU3H99SAVv_kSOAkSxpokAXb7fHN&index=2)

#### Content

- Arity and Types
- Operations

### [3. Anonymous and Named Functions](https://www.youtube.com/watch?v=1Mrp0kbLdTE&list=PLGj5ZUU3H99SAVv_kSOAkSxpokAXb7fHN&index=3)

- Lambda notation


## Atualização de Erlang e Elixir com asdf

```
adolfo@adolfo-A320M-S2H:~/Desktop/Codeberg/caes005-introduction-to-functional-programming$ asdf install erlang latest
ERROR: 'asdf_29.0.5' is not a kerl-managed Erlang/OTP installation.
ERROR: no build named 'asdf_29.0.5'!
Downloading (from GitHub) Erlang/OTP 29.0.5 to /home/adolfo/.asdf/downloads/erlang/29.0.5...
Extracting source code for normal build...
Building (normal) Erlang/OTP 29.0.5 (asdf_29.0.5); please wait...
Initializing (build) log file at /home/adolfo/.asdf/plugins/erlang/kerl-home/builds/asdf_29.0.5/otp_build_29.0.5.log.
Erlang/OTP 29.0.5 (asdf_29.0.5) has been successfully built.
Cleaning up compilation products for 'asdf_29.0.5' under:
  - /home/adolfo/.asdf/plugins/erlang/kerl-home/builds...
  - /home/adolfo/.asdf/downloads/erlang/29.0.5...
... done.
adolfo@adolfo-A320M-S2H:~/Desktop/Codeberg/caes005-introduction-to-functional-programming$ asdf global erlang latest
adolfo@adolfo-A320M-S2H:~/Desktop/Codeberg/caes005-introduction-to-functional-programming$ asdf install elixir latest
==> Checking whether specified Elixir release exists...
==> Downloading 1.20.3-otp-29 to /home/adolfo/.asdf/downloads/elixir/1.20.3-otp-29/elixir-precompiled-1.20.3-otp-29.zip
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 8432k  100 8432k    0     0  13.7M      0 --:--:-- --:--:-- --:--:-- 13.7M
==> Copying release into place
adolfo@adolfo-A320M-S2H:~/Desktop/Codeberg/caes005-introduction-to-functional-programming$ asdf global elixir latest
adolfo@adolfo-A320M-S2H:~/Desktop/Codeberg/caes005-introduction-to-functional-programming$ iex
Erlang/OTP 29 [erts-17.0.5] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [jit:ns]

Interactive Elixir (1.20.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> 
```

## Exercício

Submeter em <https://forms.gle/ECbf6mnRPKD4tnBb9>.

Faça na linguagem de sua escolha.

Escreva um programa que:

- defina uma função anônima de aridade 1
- atribua esta função a uma variável
- escreva o resultado da aplicação desta função, a partir da variável


