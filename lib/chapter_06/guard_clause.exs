defmodule Guard do
  def what_is(x) when is_number(x) do
    IO.puts("#{x} is a number")
  end

  def what_is(x) when is_list(x) do
    IO.puts("#{x} is a list")
  end

  def what_is(x) when is_atom(x) do
    IO.puts("#{x} is a atom")
  end
end

Guard.what_is(99) |> IO.inspect()
Guard.what_is(:cat) |> IO.inspect()
Guard.what_is([1, 2, 3]) |> IO.inspect()
