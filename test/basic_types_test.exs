defmodule BasicTypesTest do
  use ExUnit.Case, async: true

  doctest BasicTypes

  describe "BasicTypes.print_basic_types" do
    test "should print basic types examples in string" do
      assert BasicTypes.print_basic_types() ===
               """
               Basic types in elixir are:
               Integer: 1
               Integer in hex: 1
               Float: 1.0
               Boolean: true
               Atom: #{:atom}
               String: Elixir
               List: [1, 2, 3]
               Tuple: {1, 2, 3}
               """
    end
  end

  describe "BasicTypes.calculate_basic_arithmetic/2" do
    test "should print basic arithmetic examples in string" do
      first_number = 10
      second_number = 4
      addition = first_number + second_number
      substraction = first_number - second_number
      multiplication = first_number * second_number
      division = first_number / second_number
      division_with_div_fun = div(first_number, second_number)
      remainder_of_division = rem(first_number, second_number)
      rounded_division = round(division)
      truncated_division = trunc(division)

      assert BasicTypes.calculate_basic_arithmetic(first_number, second_number) ===
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
  end

  describe "BasicTypes.integer_value?/1" do
    test "should retun true if the value is integer" do
      assert BasicTypes.integer_value?(10) === true
    end

    test "should retun false if the value is not integer" do
      assert BasicTypes.integer_value?("10") === false
    end
  end

  describe "BasicTypes.check_strict_boolean/1" do
    test "should return the right explanation text about strict boolean if the value is FALSE" do
      assert BasicTypes.check_strict_boolean(false) ===
               """
               or/2 : second_argument_executed
               and/2 : #{false}
               not/1 : #{true}
               """
    end

    test "should return the right explanation text about strict boolean if the value is TRUE" do
      assert BasicTypes.check_strict_boolean(true) ===
               """
               or/2 : #{true}
               and/2 : second_argument_executed
               not/1 : #{false}
               """
    end
  end

  describe "BasicTypes.check_boolean/1" do
    test "should return the right explanation text about boolean if the value is NIL" do
      assert BasicTypes.check_boolean(nil) ===
               """
               ||/2 : second_argument_executed
               &&/2 : #{nil}
               !/1 : #{true}
               """
    end

    test "should return the right explanation text about boolean if the value is FALSE" do
      assert BasicTypes.check_boolean(false) ===
               """
               ||/2 : second_argument_executed
               &&/2 : #{false}
               !/1 : #{true}
               """
    end

    test "should return the right explanation text about boolean if the value is TRUE" do
      assert BasicTypes.check_boolean(true) ===
               """
               ||/2 : #{true}
               &&/2 : second_argument_executed
               !/1 : #{false}
               """
    end

    test "should return the right explanation text about boolean if the value is OTHER VALUE" do
      assert BasicTypes.check_boolean(1) ===
               """
               ||/2 : #{1}
               &&/2 : second_argument_executed
               !/1 : #{false}
               """
    end
  end
end
