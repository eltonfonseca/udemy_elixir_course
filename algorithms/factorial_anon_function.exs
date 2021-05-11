defmodule FactorialAnonFunction do
  def execute(value) do
    factorial_generator = fn self ->
      fn
        0 -> 1
        number when is_bitstring(number) -> "is not a number"
        number when number < 0 -> "number must be greater than zero"
        number when is_number(number) and number > 0 -> number * self.(self).(number - 1)
      end
    end

    factorial = factorial_generator.(factorial_generator)
    factorial.(value)
  end
end

FactorialAnonFunction.execute(5) |> IO.puts
FactorialAnonFunction.execute(-3) |> IO.puts
FactorialAnonFunction.execute("ab") |> IO.puts
