defmodule Algo.InsertionSort do
  def run(list) do
    [head | tail] = list
    do_sort(tail, [head])
  end

  def do_sort([], sorted_list) do
    sorted_list
  end

  def do_sort([head | tail], sorted_list) do
    inseted = insert(head, sorted_list)
    do_sort(tail, inseted)
  end

  def insert(elem, []) do
    [elem]
  end

  def insert(elem, sorted_list) do
    [min | rest] = sorted_list

    if min >= elem do
      [elem | [min | rest]]
    else
      [min | insert(elem, rest)]
    end
  end
end

[1, 2, 100, 3, 4, 1, 200, 45, 6, 10]
|> Algo.InsertionSort.run()
|> IO.inspect()