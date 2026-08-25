defmodule Exercicio do
  def dobro(x) do
    var = fn x -> x * 2 end
    IO.puts("O dobro de #{x} é #{var.(x)}")
  end
end

# c"Aula2\\exercicio.exs"
# Exercicio.dobro(n)
