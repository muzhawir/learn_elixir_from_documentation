defmodule BasicTypes do
  @moduledoc """
  Section Elixir Documentation #02 - Basic Types
  """

  @doc """
  Prints basic types in Elixir.

  There are 7 basic types: integer, float, boolean, atom, string, list, and tuple. Here are the
  definitions of each type:

  - Integer: a number without a fractional part.
  - Float: a number with a fractional part.
  - Boolean: either `true` or `false`.
  - Atom: a constant with a name.
  - String: a sequence of characters.
  - List: a collection of values.
  - Tuple: a collection of values with a fixed length.
  """
  @spec print_basic_types() :: String.t()
  def print_basic_types do
    integer = 1
    integer_in_hex = 0x1
    float = 1.0
    boolean = true
    atom = :atom
    string = "Elixir"
    list = inspect([1, 2, 3])
    tuple = inspect({1, 2, 3})

    """
    Basic types in elixir are:
    Integer: #{integer}
    Integer in hex: #{integer_in_hex}
    Float: #{float}
    Boolean: #{boolean}
    Atom: #{atom}
    String: #{string}
    List: #{list}
    Tuple: #{tuple}
    """
  end

  @doc """
  Calculate basic arithmetic.

  Elixir has built-in functions for basic arithmetic operations with arithmetic operators and
  some functions for more complex operations, such as:

  - `+` for addition
  - `-` for subtraction
  - `*` for multiplication
  - `/` for division
  - `div` for integer division
  - `rem` for remainder of division
  - `round` for rounding
  - `trunc` for truncating
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
  Check if the value is an integer.

  This is one of many type checker functions in Elixir that check the type of a value. In this
  case, `is_integer/1` checks if the value is an integer.

  ## Examples
    iex> BasicTypes.integer_value?(10)
    true
  """
  @spec integer_value?(number()) :: boolean()
  def integer_value?(number) do
    is_integer(number)
  end

  @doc """
  Check result to strict boolean based from input.

  This operator is a strict boolean operator, expecting the first argument to be `true` or
  `false`. There are 3 short forms:

  - `or` is short for `or/2`, returning `true` if at least one argument is `true`, executing second argument
    if first argument is `false`.
  - `and` is short for `and/2`, returning `true` if both arguments are `true`, executing second argument
    if first argument is `true`.
  - `not` is short for `not/1`, returning `true` if the argument is `false`.
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
  Check result to boolean based on input.

  This operator is a boolean operator, same as the previous one. The only difference is that
  the first argument can be various values besides `true` or `false`.

  `false` and `nil` are considered as `false`, all other values are considered as `true`.
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
  Concatenates two strings.

  Elixir has a built-in operator for concatenating two strings. In this case, `<>` is used.
  This is called the String Concatenation Operator and requires both arguments to be strings.

  ## Examples
  iex> BasicTypes.concenate_two_strings("Hello", "World")
  "Hello World"
  """
  @spec concenate_two_strings(String.t(), String.t()) :: String.t()
  def concenate_two_strings(first_string, second_string) do
    first_string <> " " <> second_string
  end

  @doc """
  Implement string interpolation.

  Elixir has a built-in operator for string interpolation. In this case, `#{}` is used.
  This is called the Interpolation Operator, and it can be used to insert values into a string.
  The value is converted to a string.

  ## Examples
  iex> BasicTypes.implement_string_interpolation(10)
  "The value is 10"
  """
  @spec implement_string_interpolation(any()) :: String.t()
  def implement_string_interpolation(value) do
    "The value is #{value}"
  end

  @doc """
  Implement string line break.

  Strings can have line breaks. This function will insert a line break between two strings using
  `\n`, which is called a newline escape sequence. If we want to print the string with
  line breaks, we need to print using `IO.puts/1`.

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
