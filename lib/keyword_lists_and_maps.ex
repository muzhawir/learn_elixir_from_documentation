defmodule KeywordListsAndMaps do
  @moduledoc """
  Section Elixir Documentation #07 - Keyword Lists and Maps
  """

  @doc """
  Print text.

  This function takes a string and an optional keyword list as arguments.

  ## Examples

    iex> KeywordListsAndMaps.print_text("hello")
    "hello"

    iex> KeywordListsAndMaps.print_text("hello", upcase: true)
    "HELLO"

    iex> KeywordListsAndMaps.print_text("hello", capitalize: true)
    "Hello"
  """
  @spec print_text(any(), keyword()) :: String.t()
  def print_text(string, options \\ []) when is_binary(string) do
    upcase = Keyword.get(options, :upcase, false)
    capitalize = Keyword.get(options, :capitalize, false)

    case {upcase, capitalize} do
      {true, false} -> String.upcase(string)
      {false, true} -> String.capitalize(string)
      {false, false} -> string
      {true, true} -> raise ArgumentError.message(":upcase and :capitalize cannot be true at the same time")
    end
  end
end
