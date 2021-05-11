# Fatorial with Tail-Call Optimization

defmodule TCFatorial do
  def of(number) when is_number(number), do: factorial_of(number, 1)
  def of(_number), do: "not a number"

  defp factorial_of(0, acc), do: acc
  defp factorial_of(number, _acc) when number < 0, do: "number must be greater than zero"
  defp factorial_of(number, acc) when number > 0, do: factorial_of(number - 1, number * acc)
end

TCFatorial.of(5) |> IO.puts
TCFatorial.of(-3) |> IO.puts
TCFatorial.of("number") |> IO.puts
