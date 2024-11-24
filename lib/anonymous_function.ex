defmodule AnonymousFunction do
  @moduledoc """
  Section Elixir Documentation #06 - Anonymous Function
  """

  @doc """
  Calculate the area of a rectangle.

  This function demonstrates the use of an anonymous function. It receives two numbers representing
  the length and the width, and returns the computed area of the rectangle.

  ## Examples
      iex> AnonymousFunction.calculate_rectangle_area(5, 5)
      25
  """
  @spec calculate_rectangle_area(number(), number()) :: number()
  def calculate_rectangle_area(first_number, second_number) when is_number(first_number) and is_number(second_number) do
    calculate = fn first_number, second_number -> first_number * second_number end

    calculate.(first_number, second_number)
  end

  @doc """
  Calculate the square area.

  This function demonstrates the use of an anonymous function with closure, it receives one
  number and returns the calculated area of a square.

  ## Examples

      iex> AnonymousFunction.calculate_square_area(5)
      25

  """
  @spec calculate_square_area(number()) :: number()
  def calculate_square_area(number) when is_number(number) do
    calcalute = fn side -> calculate_rectangle_area(side, side) end

    calcalute.(number)
  end

  @doc """
  Determine if the shape is a square or a rectangle.

  This function uses an anonymous function with pattern matching and guards.
  It takes two numbers as input and returns whether the shape is a "Square" or "Rectangle".

  ## Examples

      iex> AnonymousFunction.square_or_rectangle?(5, 5)
      "Square"

      iex> AnonymousFunction.square_or_rectangle?(5, 10)
      "Rectangle"

  """
  @spec square_or_rectangle?(number(), number()) :: String.t()
  def square_or_rectangle?(first_number, second_number) when is_number(first_number) and is_number(second_number) do
    check_shape = fn
      first_number, second_number when first_number == second_number -> "Square"
      _, _ -> "Rectangle"
    end

    check_shape.(first_number, second_number)
  end

  @doc """
  Calculate the area of a triangle.

  This function is an example of capture operator, it receives two numbers (base and height)
  and returns the area of the triangle.

  ## Examples

      iex> AnonymousFunction.calculate_triangle_area?(5, 5)
      12.5

  """
  @spec calculate_triangle_area?(number(), number()) :: number()
  def calculate_triangle_area?(base, height) do
    calculate = &(0.5 * &1 * &2)

    calculate.(base, height)
  end
end
