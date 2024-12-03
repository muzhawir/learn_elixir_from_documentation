defmodule EnumerablesAndStreams do
  @moduledoc """
  Section Elixir Documentation #11 - Enumerables And Streams
  """

  @doc """
  Multiplies each element in the list by the given multiplier.

  This function demonstrates the use of the `Enum.map/2` function from the `Enumerable` protocol
  and uses of capture operator.

  ## Examples

      iex> EnumerablesAndStreams.multiply_elements([1, 2, 3], 2)
      [2, 4, 6]

      iex> EnumerablesAndStreams.multiply_elements(%{1 => 2, 2 => 3, 3 => 4})
      [2, 6, 12]

  """
  @spec multiply_elements(list(integer()), integer()) :: list()
  def multiply_elements(enum, multiplier) when is_list(enum) do
    Enum.map(enum, &(&1 * multiplier))
  end

  @spec multiply_elements(map()) :: list()
  def multiply_elements(enum) when is_map(enum) do
    Enum.map(enum, fn {key, value} -> key * value end)
  end

  @doc """
  Sums the odd numbers in the range.

  This function demonstrates the use of the `Stream.filter/2` and `Enum.reduce/2` functions
  from the `Enumerable` protocol and uses of pipe operator.

  ## Examples

      iex> EnumerablesAndStreams.sum_elements(1..10)
      25

  """
  @spec sum_elements(Range.t(), non_neg_integer()) :: any()
  def sum_elements(enum, multiplier \\ 0) when is_struct(enum, Range) do
    enum
    |> Stream.filter(&(rem(&1, 2) != 0))
    |> Enum.reduce(multiplier, &(&1 + &2))
  end

  @doc """
  Unfolds a string into a list of graphemes.

  This function demonstrates the use of the `Stream.unfold/2` function from the `Enumerable` protocol.

  ## Examples

      iex> EnumerablesAndStreams.take_graphemes("elixir", 3)
      ["e", "l", "i"]

  """
  @spec take_graphemes(binary(), non_neg_integer()) :: list()
  def take_graphemes(string, count \\ 0) when is_binary(string) do
    string
    |> Stream.unfold(&String.next_codepoint/1)
    |> Enum.take(count)
  end
end
