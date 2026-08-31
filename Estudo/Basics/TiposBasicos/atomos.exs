# Um átomo é uma constante cujo nome é seu valor. Se você está familiarizado com Ruby, estes são equivalentes aos Symbols:
:hello
# :hello

:foo
# :foo

:foo == :bar
# false

# Booleanos true e false também são os átomos :true e :false, respectivamente.
is_atom(true)
# true

is_boolean(:true)
# true

:true === true
# true

# Nomes de módulos em Elixir também são átomos.
# MyApp.MyModule é um átomo válido, mesmo que tal módulo ainda não tenha sido declarado.
is_atom(MyApp.MyModule)
# true

# Átomos também são usados para referenciar módulos de bibliotecas Erlang, incluindo as bibliotecas embutidas.
:crypto.stron_rand_bytes 3
# <<23, 104, 108>>
