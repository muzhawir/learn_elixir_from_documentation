defmodule BinariesStringsAndCharlists do
  @moduledoc """
  Section Elixir Documentation #07 - Binaries, Strings, and Charlists
  """

  @doc """
  Checks if the given type is a binary.

  This is a type-checking function in Elixir that checks if the given value is a binary,
  returning a boolean value.

  ## Examples

      iex> BinariesStringsAndCharlists.binary_type?("elixir")
      true

  """
  @spec binary_type?(any()) :: boolean()
  def binary_type?(type) do
    is_binary(type)
  end

  @doc """
  Returns the length and byte size of a binary.

  Demonstrates `String.length/1` for graphemes and `byte_size/1` for bytes.
  For example, "héllo" has length 5 and byte size 6 due to "é" being 2 bytes.

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

  This function takes a string with 1 length as input and returns a list of code points.

  This function illustrates the concept of graphemes in UTF-8 encoding. A grapheme may consist of
  multiple Unicode code points that are combined to represent a single visible character. For
  example, the emoji "👩‍🚒" has 3 code points: "👩", "‍", and "🚒".

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
  Appends a null byte to the given string.

  This function takes a string as input and returns a raw form of bitstring with a null
  byte appended to it.

  ## Examples

      iex> BinariesStringsAndCharlists.binary_representation("hełło")
      <<104, 101, 197, 130, 197, 130, 111, 0>>

  """
  @spec binary_representation(binary()) :: binary()
  def binary_representation(binary) when is_binary(binary) do
    binary <> <<0>>
  end
end
