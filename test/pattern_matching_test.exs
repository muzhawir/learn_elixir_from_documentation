defmodule PatternMatchingTest do
  use ExUnit.Case, async: true

  doctest PatternMatching

  describe "PatternMatching.tuple_match/1" do
    test "should return interoplated string from match variable" do
      assert PatternMatching.tuple_match({:ok, 200, "Data fetched successfully"}) ===
               "Status: ok, Code: 200, Body: Data fetched successfully"
    end
  end

  describe "PatternMatching.tagged_tuple_match/1" do
    test "should return interoplated string from match variable" do
      assert PatternMatching.tagged_tuple_match({:ok, 200, "Data fetched successfully"}) ===
               "Status: ok, Code: 200, Body: Data fetched successfully"
    end
  end

  describe "PatternMatching.list_match/1" do
    test "should return interoplated string from match variable" do
      assert PatternMatching.list_match(["SnSV ROG Laptop", 3200, "Electronic"]) ===
               "Brand: SnSV ROG Laptop, Price: 3200, Category: Electronic"
    end
  end

  describe "PatternMatching.head_and_tail_list_match/1" do
    test "should return head and tail output ending with :ok" do
      assert PatternMatching.head_and_tail_list_match(["SnSV ROG Laptop", 3200, "Electronic"]) === :ok
    end
  end

  describe "PatternMatching.pin_operator_in_tuple_match/2" do
    test "should return pinned variable and tuple output ending with :ok" do
      assert PatternMatching.pin_operator_in_tuple_match(:ok, {:ok, 200, "Data fetched successfully"}) === :ok
    end
  end

  describe "PatternMatching.pin_operator_in_list_match/2" do
    test "should return pinned variable and list output ending with :ok" do
      assert PatternMatching.pin_operator_in_list_match("SnSV ROG Laptop", ["SnSV ROG Laptop", 3200, "Electronic"]) ===
               :ok
    end
  end
end
