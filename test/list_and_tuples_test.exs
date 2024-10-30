defmodule ListAndTuplesTest do
  use ExUnit.Case, async: true

  doctest ListAndTuples

  describe "ListAndTuples.count_list_length/1" do
    test "should return the length of the list" do
      assert ListAndTuples.count_list_length([1, :atom, true, "elixir"]) === 4
    end
  end

  describe "ListAndTuples.update_tuple/3" do
    test "should return the updated tuple" do
      assert ListAndTuples.update_tuple({1, 2, 3}, 0, 10) ===
               "The new tuple is: {10, 2, 3}"
    end
  end
end
