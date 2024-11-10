defmodule AnonymousFunction do
  @moduledoc """
  Section Elixir Documentation #05 - Anonymous Function
  """

  @doc """
  Calculate the rectangle of a number.

  This function is an example of anonymous function, it recieves two numbers and returns
  the rectangle.

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
  Calculate the square of a number.

  This function is an example of anonymous function with closure, it recieves one number and returns
  the square.

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
  Check if the shape is square or rectangle.

  This function is an example of anonymous function with clauses and guards,
  it recieves two numbers and returns the shape type.

  ## Examples
    iex> AnonymousFunction.square_or_rectangle?(5, 5)
    "Square"
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
  Calculate the triangle of a number.

  This function is an example of capture operator, it recieves two numbers and returns
  the triangle.

  ## Examples
    iex> AnonymousFunction.calculate_triangle_area?(5, 5)
    12.5
  """
  def calculate_triangle_area?(base, height) do
    calculate = &(0.5 * &1 * &2)

    calculate.(base, height)
  end
end
