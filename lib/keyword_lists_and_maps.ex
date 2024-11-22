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

  @doc """
  Print username from user map.

  This function takes a user map as an argument and prints the username in uppercase.

  ## Examples

    iex> KeywordListsAndMaps.print_username(%{username: "joe", password: "secret"})
    "JOE"
  """
  @spec print_username(map()) :: String.t()
  def print_username(user) when is_map(user) do
    print_text(user.username, upcase: true)
  end
end
