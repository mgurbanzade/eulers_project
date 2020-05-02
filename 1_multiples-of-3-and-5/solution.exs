defmodule Solution do
  def iterate(acc, sum, num) when acc < num do
    conditions_matched = Integer.mod(acc, 3) == 0 || Integer.mod(acc, 5) == 0

    case conditions_matched do
      true ->
        iterate(acc + 1, sum + acc, num)
      false ->
        iterate(acc + 1, sum, num)
    end
  end

  def iterate(_acc, sum, _num) do
    sum
  end

  def find_and_print do
    upper_bound = 1000
    IO.puts iterate(0, 0, upper_bound)
  end
end

Solution.find_and_print
