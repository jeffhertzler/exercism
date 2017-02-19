defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, factors) do
    factors
    |> Enum.flat_map(&multiples(&1, limit))
    |> Enum.uniq
    |> Enum.sum
  end

  defp multiples(factor, limit), do: multiples(factor, limit, factor, [])
  defp multiples(_factor, limit, current, list) when current >= limit, do: list
  defp multiples(factor, limit, current, list), do: multiples(factor, limit, current+factor, [current|list])
end
