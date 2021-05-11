defmodule Fatorial do
  def of(0), do: 1
  def of(number) when is_bitstring(number), do: "not is a valid number"
  def of(number) when is_number(number) and number > 0, do: number * of number - 1
end

5 |> Fatorial.of |> IO.puts
