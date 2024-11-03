defmodule BasicTypes do
  @moduledoc """
  Section Elixir Documentation #02 - Basic Types
  """

  @doc """
  Prints basic types in Elixir
  """
  @spec print_basic_types() :: String.t()
  def print_basic_types do
    integer = 1
    integer_in_hex = 0x1
    boolean = true
    atom = :atom
    string = "Elixir"
    list = inspect([1, 2, 3])
    tuple = inspect({1, 2, 3})

    """
    Basic types in elixir are:
    Integer: #{integer}
    Integer in hex: #{integer_in_hex}
    Boolean: #{boolean}
    Atom: #{atom}
    String: #{string}
    List: #{list}
    Tuple: #{tuple}
    """
  end

  @doc """
  Calculate basic arithmetic
  """
  @spec calculate_basic_arithmetic(number(), number()) :: String.t()
  def calculate_basic_arithmetic(first_number, second_number) do
    addition = first_number + second_number
    substraction = first_number - second_number
    multiplication = first_number * second_number
    division = first_number / second_number
    division_with_div_fun = div(first_number, second_number)
    remainder_of_division = rem(first_number, second_number)
    rounded_division = round(division)
    truncated_division = trunc(division)

    """
    Basic Arithmetic:
    Addition: #{first_number} + #{second_number} = #{addition}
    Substraction: #{first_number} - #{second_number} = #{substraction}
    Multiplication: #{first_number} - #{second_number} = #{multiplication}
    Division: #{first_number} / #{second_number} = #{division}
    Division With div Function: #{first_number} / #{second_number} = #{division_with_div_fun}
    Remainder Of Division: #{first_number} % #{second_number} = #{remainder_of_division}
    Rounded Division: #{rounded_division}
    Truncated Division: #{truncated_division}
    """
  end

  @doc """
  Check if the value is an integer or not
  """
  @spec integer_value?(number()) :: boolean()
  def integer_value?(number) do
    is_integer(number)
  end

  @doc """
  Check result to strict boolean based from input
  """
  @spec check_strict_boolean(boolean()) :: String.t()
  def check_strict_boolean(boolean) do
    or_result = boolean or "second_argument_executed"

    and_result = boolean and "second_argument_executed"

    not_result = not boolean

    """
    or/2 : #{or_result}
    and/2 : #{and_result}
    not/1 : #{not_result}
    """
  end

  @doc """
  Check result to boolean based from input
  """
  @spec check_boolean(boolean()) :: String.t()
  def check_boolean(expression) do
    or_result = expression || "second_argument_executed"

    and_result = expression && "second_argument_executed"

    not_result = !expression

    """
    ||/2 : #{or_result}
    &&/2 : #{and_result}
    !/1 : #{not_result}
    """
  end

  @doc """
  Concenate two strings

  ## Examples
  iex> BasicTypes.concenate_two_strings("Hello", "World")
  "Hello World"
  """
  @spec concenate_two_strings(String.t(), String.t()) :: String.t()
  def concenate_two_strings(first_string, second_string) do
    first_string <> " " <> second_string
  end

  @doc """
  Implement string interpolation

  ## Examples
  iex> BasicTypes.implement_string_interpolation(10)
  "The value is 10"
  """
  @spec implement_string_interpolation(any()) :: String.t()
  def implement_string_interpolation(value) do
    "The value is #{value}"
  end

  @doc """
  Implement string line break

  ## Examples
  iex> BasicTypes.implement_string_line_break("Hello", "World")
  "Hello\nWorld\n"
  """
  @spec implement_string_line_break(String.t(), String.t()) :: String.t()
  def implement_string_line_break(first_string, second_string) do
    """
    #{first_string}
    #{second_string}
    """
  end
end
