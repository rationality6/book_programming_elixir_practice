times_2 = fn n -> n * 2 end

apply = fn func, value -> func.(value) end

apply.(times_2, 6)
|> IO.inspect()
