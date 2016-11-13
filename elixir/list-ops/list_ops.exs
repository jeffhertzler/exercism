defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  #
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically imported) and so shouldn't be used either.

  @spec count(list) :: non_neg_integer
  def count(l) do
    count(l, 0)
  end
  defp count([], acc) do
    acc
  end
  defp count([head|tail], acc) do
    count(tail, acc + 1)
  end

  @spec reverse(list) :: list
  def reverse(l) do
    reverse(l, [])
  end
  defp reverse([], acc) do
    acc
  end
  defp reverse([head|tail], acc) do
    reverse(tail, [head|acc])
  end

  @spec map(list, (any -> any)) :: list
  def map(l, f) do
    map(l, f, [])
  end
  defp map([], _, acc) do
    reverse(acc)
  end
  defp map([head|tail], f, acc) do
    map(tail, f, [f.(head)|acc])
  end

  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter(l, f) do
    filter(l, f, [])
  end
  defp filter([], _, acc) do
    reverse(acc)
  end
  defp filter([head|tail], f, acc) do
    acc = if (f.(head)), do: [head|acc], else: acc
    filter(tail, f, acc)
  end

  @type acc :: any
  @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  def reduce([], acc, _) do
    acc
  end
  def reduce([head|tail], acc, f) do
    reduce(tail, f.(head, acc), f)
  end

  @spec append(list, list) :: list
  def append(a, b) do
    list = reverse(a)
    insert(list, b)
  end
  defp insert([], acc) do
    acc
  end
  defp insert([head|tail], acc) do
    insert(tail, [head|acc])
  end

  @spec concat([[any]]) :: [any]
  def concat(ll) do
    concat(ll, [])
  end
  defp concat([], acc) do
    reverse(acc)
  end
  defp concat([[]|list], acc) do
    concat(list, acc)
  end
  defp concat([[head|tail]|list], acc) do
    concat([tail|list], [head|acc])
  end
end
