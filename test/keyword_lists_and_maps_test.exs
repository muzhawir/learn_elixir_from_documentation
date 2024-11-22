defmodule KeywordListsAndMapsTest do
  use ExUnit.Case, async: true

  doctest KeywordListsAndMaps

  describe "KeywordListsAndMaps.print_text/2" do
    test "should print text" do
      assert KeywordListsAndMaps.print_text("hello") === "hello"
    end

    test "should print text with upcase result" do
      assert KeywordListsAndMaps.print_text("hello", upcase: true) === "HELLO"
    end

    test "should print text with capitalize result" do
      assert KeywordListsAndMaps.print_text("hello", capitalize: true) === "Hello"
    end

    test "should raise an error if option :upcase and :capitalize are used at the same time" do
      assert_raise KeyError, fn ->
        KeywordListsAndMaps.print_text("hello", upcase: true, capitalize: true)
      end
    end
  end
end
