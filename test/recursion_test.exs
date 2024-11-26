defmodule RecursionTest do
  use ExUnit.Case, async: true

  import ExUnit.CaptureIO

  doctest Recursion

  describe "print_multiple_times/2" do
    test "should print the string multiple times" do
      output = capture_io(fn -> Recursion.print_multiple_times("hello", 3) end)

      expexted_output = """
      3: hello
      2: hello
      1: hello
      Base Case
      """

      assert output === expexted_output
    end
  end
end
