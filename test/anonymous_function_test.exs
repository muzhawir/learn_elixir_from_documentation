defmodule AnonymousFunctionTest do
  use ExUnit.Case, async: true

  doctest AnonymousFunction

  describe "AnonymousFunction.calculate_rectangle_area/1" do
    test "should return the rectangle of the number" do
      assert AnonymousFunction.calculate_rectangle_area(5, 5) === 25
    end
  end

  describe "AnonymousFunction.calculate_square_area/1" do
    test "should return the square of the number" do
      assert AnonymousFunction.calculate_square_area(5) === 25
    end
  end

  describe "AnonymousFunction.square_or_rectangle?/2" do
    test "should return the shape type" do
      assert AnonymousFunction.square_or_rectangle?(5, 5) === "Square"
      assert AnonymousFunction.square_or_rectangle?(5, 10) === "Rectangle"
    end
  end

  describe "AnonymousFunction.calculate_triangle_area?/2" do
    test "should return the triangle of the number" do
      assert AnonymousFunction.calculate_triangle_area?(5, 5) === 12.5
    end
  end
end
