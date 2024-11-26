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
  RESULTS OF RECURSION
  def sum_list([1 | 2, 3], 2)
  Stack building: head=1, accumulator=2
  result = sum_list([2 | 3], 1 + 2)

  def sum_list([2 | 3], 3)
  Stack building: head=2, accumulator=3
  result = sum_list([3], 2 + 3)

  def sum_list([3], 5)
  Stack building: head=3, accumulator=5
  result = sum_list([], 3 + 5)

  def sum_list([], 8)
  Base case reached with accumulator=8
  accumulator => 8
  result_before => 8

  Unwinding def sum_list([3], 5)
  Unwinding: head=3, result=8
  result_after => 8
  result_before => 8

  Unwinding def sum_list([2 | 3], 3)
  Unwinding: head=2, result=8
  result_after => 8
  result_before => 8

  Unwinding def sum_list([1 | 2, 3], 2)
  Unwinding: head=1, result=8
  result_after => 8
  8
  """
  def sum_list([], accumulator) do
    IO.puts("Base case reached with accumulator=#{accumulator}")

    IO.inspect(accumulator, label: "accumulator")
  end

  def sum_list([head | tail], accumulator) do
    IO.puts("Stack building: head=#{head}, accumulator=#{accumulator}")

    result = tail |> sum_list(head + accumulator) |> IO.inspect(label: "result_before")

    IO.puts("Unwinding: head=#{head}, result=#{result}")

    IO.inspect(result, label: "result_after")
  end
end
