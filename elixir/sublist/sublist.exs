defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(a, a), do: :equal
  def compare([], _), do: :sublist
  def compare(_, []), do: :superlist
  def compare(a, b) when length(a) < length(b), do: contains(a, b, :sublist)
  def compare(a, b) when length(a) > length(b), do: contains(b, a, :superlist)
  def compare(_, _), do: :unequal

  defp contains(sub, list, _) when length(sub) > length(list), do: :unequal
  defp contains(sub, list, ret) do
    if Enum.take(list, length(sub)) === sub, do: ret, else: contains(sub, tl(list), ret)
  end
end
