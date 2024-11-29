defmodule Recursion do
  @moduledoc """
  Section Elixir Documentation #10 - Recursion
  """

  @doc """
  Prints a message multiple times using recursion.

  ## Examples

      iex> Recursion.print_multiple_times("hello", 3)
      :ok

  """
  @spec print_multiple_times(String.t(), non_neg_integer()) :: :ok
  def print_multiple_times(_message, 0) do
    IO.puts("Base Case")
  end

  def print_multiple_times(message, times) when times > 0 do
    IO.puts("#{times}: #{message}")

    print_multiple_times(message, times - 1)
  end

  @doc """
  Sums a list of numbers using recursion.

  ## Steps of the recursion
  For example, if you invoke the function with `sum_list([1, 2, 3], 0)`, the steps are as follows:

  def sum_list([1 | 2, 3], 0)
  Stack building: head=1, accumulator=0
  result = sum_list([2 | 3], 1 + 0)

  def sum_list([2 | 3], 1)
  Stack building: head=2, accumulator=1
  result = sum_list([3], 2 + 1)

  def sum_list([3], 3)
  Stack building: head=3, accumulator=3
  result = sum_list([], 3 + 3)

  def sum_list([], 6)
  Base case reached with accumulator=6
  accumulator => 6
  result_before => 6

  Unwinding def sum_list([3], 3)
  Unwinding: head=3, result=6
  result_after => 6
  result_before => 6

  Unwinding def sum_list([2 | 3], 1)
  Unwinding: head=2, result=6
  result_after => 6
  result_before => 6

  Unwinding def sum_list([1 | 2, 3], 0)
  Unwinding: head=1, result=6
  result_after => 6
  6

  ## Examples

      iex> Recursion.sum_list([1, 2, 3], 0)
      6

  """
  @spec sum_list(list(), non_neg_integer()) :: non_neg_integer()
  def sum_list([head | tail], accumulator) do
    IO.puts("Stack building: head=#{head}, accumulator=#{accumulator}")

    result = tail |> sum_list(head + accumulator) |> IO.inspect(label: "result_before")

    IO.puts("Unwinding: head=#{head}, result=#{result}")

    IO.inspect(result, label: "result_after")
  end

  def sum_list([], accumulator) do
    IO.puts("Base case reached with accumulator=#{accumulator}")

    IO.inspect(accumulator, label: "accumulator")
  end
end
