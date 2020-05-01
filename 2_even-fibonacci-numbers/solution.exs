defmodule Solution do
  def iterate(_prev, curr, sum, limit) when curr >= limit do
    sum
  end

  def iterate(prev, curr, sum, limit) do
    new_sum = if Integer.mod(curr, 2) == 0, do: sum + curr, else: sum
    iterate(curr, prev + curr, new_sum, limit)
  end

  def find_even_sum(num) do
    iterate(1, 2, 0, num)
  end

  def find_and_print do
    upper_bound = 4000000
    IO.puts find_even_sum(upper_bound)
  end
end

Solution.find_and_print
