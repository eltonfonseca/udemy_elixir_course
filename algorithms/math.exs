defmodule Math do
  def par?(number) when rem(number, 2) == 0, do: true
  def par?(number) when is_number(number), do: false
  def par?(_number), do: "not a number"
end

Math.par?(2) |> IO.puts
Math.par?(3) |> IO.puts
Math.par?("qualquer numero") |> IO.puts
