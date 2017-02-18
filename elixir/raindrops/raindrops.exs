defmodule Raindrops do

  defp drops do
    [Pling: 3, Plang: 5, Plong: 7]
  end

  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t
  def convert(number) do
    convert(number, drops, "")
  end
  defp convert(number, [], ""), do: number |> to_string
  defp convert(number, [], str), do: str
  defp convert(number, [{drop, factor} | factors], str) do
    convert(number, factors, str <> add_drop(number, factor, drop))
  end

  defp add_drop(number, factor, drop) do
    cond do
      rem(number, factor) === 0 -> drop |> to_string
      true -> ""
    end
  end
end
