defmodule Recursive do
  def sum(1), do: 1
  def sum(n), do: n + sum(n-1)
end

Recursive.sum(5) |> IO.inspect
