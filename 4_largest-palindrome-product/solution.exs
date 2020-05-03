defmodule Solution do
  def is_palindrome(num) do
    stringified_num = to_string(num)
    reversed_num = String.reverse(stringified_num)
    stringified_num == reversed_num
  end

  def iterate(a, b, lg, limit) when b < limit do
    sum = a * b
    new_lg = if is_palindrome(sum), do: sum, else: lg

    cond do
      a == 999 ->
        iterate(900, b + 1, new_lg, limit)
      true ->
        iterate(a + 1, b, new_lg, limit)
    end
  end

  def iterate(_a, _b, lg, _limit) do
    lg
  end

  def find_largest_palindrome do
    iterate(900, 900, 0, 1000)
  end

  def find_and_print do
    IO.puts find_largest_palindrome()
  end
end

Solution.find_and_print
