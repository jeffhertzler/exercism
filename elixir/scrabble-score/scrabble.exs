defmodule Scrabble do
  @doc """
  Calculate the scrabble score for the word.
  """
  @spec score(String.t) :: non_neg_integer
  def score(word) do
    word
    |> String.upcase
    |> String.codepoints
    |> Enum.map(&point/1)
    |> Enum.sum
  end

  defp point(c) when c in ~w(A E I O U L N R S T), do: 1
  defp point(c) when c in ~w(D G), do: 2
  defp point(c) when c in ~w(B C M P), do: 3
  defp point(c) when c in ~w(F H V W Y), do: 4
  defp point(c) when c in ~w(K), do: 5
  defp point(c) when c in ~w(J X), do: 8
  defp point(c) when c in ~w(Q Z), do: 10
  defp point(_), do: 0
end
