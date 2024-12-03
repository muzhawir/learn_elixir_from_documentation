defmodule EnumerablesAndStreamsTest do
  use ExUnit.Case, async: true

  doctest EnumerablesAndStreams

  describe "EnumerablesAndStreams.multiply_elements" do
    test "should input list and return the result of multiplication" do
      assert EnumerablesAndStreams.multiply_elements([1, 2, 3], 2) === [2, 4, 6]
    end

    test "should input map and return the result of multiplication" do
      assert EnumerablesAndStreams.multiply_elements(%{1 => 2, 2 => 3, 3 => 4}) === [2, 6, 12]
    end
  end

  describe "EnumerablesAndStreams.sum_elements/2" do
    test "should input range and return the result" do
      assert EnumerablesAndStreams.sum_elements(1..10) === 25
    end

    test "should input list and accumulator, return the result" do
      assert EnumerablesAndStreams.sum_elements(1..10, 2) === 27
    end
  end

  describe "EnumerablesAndStreams.take_graphemes/2" do
    test "should input string and return the graphemes" do
      assert EnumerablesAndStreams.take_graphemes("elixir", 3) === ["e", "l", "i"]
    end
  end
end
