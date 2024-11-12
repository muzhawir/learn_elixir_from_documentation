defmodule BinariesStringsAndCharlists do
  @moduledoc """
  Section Elixir Documentation #06 - Binaries, Strings, and Charlists
  """

  @doc """
  Checks if the given type is binary.

  This is one of many type-checking functions in Elixir that checks the type of a value. In this
  case, `is_binary/1` checks if the value is a binary and returns a boolean.

  ## Examples
    iex> BinariesStringsAndCharlists.binary_type?("elixir")
    true
  """
  @spec binary_type?(any()) :: boolean()
  def binary_type?(type) do
    is_binary(type)
  end

  @doc """
  Returns the length and byte size of the given binary.

  This function demonstrates the use of the `String.length/1` and `byte_size/1` functions to
  retrieve the length and byte size of a binary.

  The length of a binary is the number of graphemes it contains, while the byte size is the number of bytes necessary to represent it.
  In the example, the function takes a string "héllo" as input, which makes the length and byte
  size different.

  The length is 5 (the number of graphemes), and the byte size is 6 (the number
  of bytes necessary to represent it, since the character "é" uses 2 bytes to represent).
  This function returns a string that interpolates the result of length and byte size.

  ## Examples
    iex> BinariesStringsAndCharlists.binary_length_and_byte_size("héllo")
    "The length of the binary is 5 and the byte size is 6"
  """
  @spec binary_length_and_byte_size(binary()) :: String.t()
  def binary_length_and_byte_size(binary) when is_binary(binary) do
    length = String.length(binary)

    byte_size = byte_size(binary)

    "The length of the binary is #{length} and the byte size is #{byte_size}"
  end

  @doc """
  Returns the code points of the given emoji.

  This function takes a binary as input and returns a list of code points if the input is a single
  emoji. If the input is not a single emoji, the function raises an error.

  This function demonstrates the UTF-8 that proves a notion of grapheme. Graphemes may consist of
  multiple Unicode code points that are represented as one.

  ## Examples
    iex> BinariesStringsAndCharlists.emoji_code_point("👩‍🚒")
    ["👩", "‍", "🚒"]
  """
  @spec emoji_code_point(binary()) :: [binary()] | String.t()
  def emoji_code_point(emoji) when is_binary(emoji) do
    if String.length(emoji) === 1 do
      String.codepoints(emoji)
    else
      raise "Input must be a single emoji"
    end
  end

  @doc """
  Returns the binary representation of the given binary concatenated with a null byte.

  This function takes a binary (like string or emoji) as input and returns a binary that is the same as the input
  concatenated with a null byte.

  ## Examples
    iex> BinariesStringsAndCharlists.binary_representation("hełło")
    <<104, 101, 197, 130, 197, 130, 111, 0>>
  """
  @spec binary_representation(binary()) :: binary()
  def binary_representation(binary) when is_binary(binary) do
    binary <> <<0>>
  end
end
