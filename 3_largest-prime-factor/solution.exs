defmodule Solution do
  def iterate(tmp, lf, c, num) when c * c <= tmp do
    cond do
      Integer.mod(tmp, c) == 0 ->
        iterate div(tmp, c), c, c, num
      true ->
        iterate(tmp, lf, c + 1, num)
    end
  end

  def iterate(tmp, lf, _c, _num) when tmp > lf do
    tmp
  end

  def find_largest_prime_factor(num) do
    iterate(num, 0, 2, num)
  end

  def find_and_print do
    input_num = 600851475143
    IO.puts find_largest_prime_factor input_num
  end
end

Solution.find_and_print
