defmodule Algo.InsertionSort4 do
  def run(list) do
    do_sort([], list)
  end

  def do_sort(acc, []) do
    acc
  end

  def do_sort(acc, [head | tail]) do
    do_sort(insert(acc, head), tail)
  end

  def insert([], element) do
    [element]
  end

  def insert([head | rest], element) do
    cond do
      head >= element -> [element | [head | rest]]
      true -> [head | insert(rest, element)]
    end
  end
end

list0 =
  1..10
  |> Enum.to_list()
  |> Enum.shuffle()
  |> IO.inspect()

list0
|> Algo.InsertionSort4.run()
|> IO.inspect()
