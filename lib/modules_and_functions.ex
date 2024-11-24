defmodule ModulesAndFunctions do
  @moduledoc """
  Section Elixir Documentation #09 - Modules And Functions
  """

  @doc """
  Calculate the sum of two numbers.

  This function demonstrates the use of a private function in Elixir, which is a function
  that can only be called from within the module where it was defined.

  ## Examples

      iex> ModulesAndFunctions.sum(5, 5)
      10

  """
  @spec sum(number(), number()) :: number()
  def sum(first_number, second_number) when is_number(first_number) and is_number(second_number) do
    do_sum(first_number, second_number)
  end

  @spec do_sum(number(), number()) :: number()
  defp do_sum(first_number, second_number) when is_number(first_number) and is_number(second_number) do
    first_number + second_number
  end

  @doc """
  Determine if a number is zero or not.

  This function showcases the use of multiple clauses in Elixir, allowing it to handle
  different input cases using guards and pattern matching.

  ## Examples

      iex> ModulesAndFunctions.number_zero?(0)
      "Zero"

      iex> ModulesAndFunctions.number_zero?(5)
      "Not Zero"

  """
  @spec number_zero?(number()) :: String.t()
  def number_zero?(0) when is_integer(0), do: "Zero"
  def number_zero?(number) when is_integer(number), do: "Not Zero"

  @doc """
  Join two strings with a separator.

  This function showcases the use of default arguments and the importance of function heads if
  functions have multiple clauses. In this case, if the second argument is `nil`, the function
  will return the first string unchanged.

  ## Examples

      iex> ModulesAndFunctions.join_strings("Hello")
      "Hello"

      iex> ModulesAndFunctions.join_strings("Hello", "World")
      "Hello World"

  """
  @spec join_strings(String.t(), String.t() | nil, String.t()) :: String.t()
  def join_strings(first_string, second_string \\ nil, separator \\ " ")

  def join_strings(first_string, second_string, _separator) when is_nil(second_string) do
    first_string
  end

  def join_strings(first_string, second_string, separator) do
    first_string <> separator <> second_string
  end
end
