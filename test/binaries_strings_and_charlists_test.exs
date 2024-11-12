defmodule BinariesStringsAndCharlistsTest do
  use ExUnit.Case, async: true

  doctest BinariesStringsAndCharlists

  describe "BinariesStringsAndCharlists.binary_type?/1" do
    test "should return true if the type is binary" do
      assert BinariesStringsAndCharlists.binary_type?("elixir") === true
    end
  end

  describe "BinariesStringsAndCharlists.binary_length_and_byte_size/1" do
    test "should return the length and byte size of the binary" do
      assert BinariesStringsAndCharlists.binary_length_and_byte_size("héllo") ===
               "The length of the binary is 5 and the byte size is 6"
    end

    test "should raise an error if the type is not binary" do
      assert_raise FunctionClauseError, fn ->
        BinariesStringsAndCharlists.binary_length_and_byte_size(10)
      end
    end
  end

  describe "BinariesStringsAndCharlists.emoji_code_point/1" do
    test "should return the binary code point" do
      assert BinariesStringsAndCharlists.emoji_code_point("👩‍🚒") === ["👩", "‍", "🚒"]
    end

    test "should raise an error if the type is not binary" do
      assert_raise FunctionClauseError, fn ->
        BinariesStringsAndCharlists.emoji_code_point(10)
      end
    end

    test "should raise an error if binary more than one binary" do
      assert_raise RuntimeError, fn ->
        BinariesStringsAndCharlists.emoji_code_point("👩‍🚒👩")
      end

      assert_raise RuntimeError, fn ->
        BinariesStringsAndCharlists.emoji_code_point("Test")
      end
    end
  end

  describe "BinariesStringsAndCharlists.binary_representation/1" do
    test "should return the number of bytes" do
      assert BinariesStringsAndCharlists.binary_representation("hełło") ===
               <<104, 101, 197, 130, 197, 130, 111, 0>>
    end

    test "should return error" do
    end
  end
end
