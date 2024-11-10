defmodule ListAndTuples do
  @moduledoc """
  Section Elixir Documentation #03 - List and Tuples
  """

  @doc """
  Count the length of a list.

  This function receives a list and returns its length.

  ## Examples
    iex> ListAndTuples.count_list_length([1, :atom, true, "elixir"])
    4
  """
  @spec count_list_length(list()) :: non_neg_integer()
  def count_list_length(list) do
    length(list)
  end

  @doc """
  Concatenate two lists.

  Elixir has a built-in operator for concatenating two lists, `++`. This operator requires both
  operands to be lists.

  ## Examples
    iex> ListAndTuples.concatenated_list([1, 2, 3], [4, 5, 6])
    [1, 2, 3, 4, 5, 6]
  """
  @spec concatenated_list(list(), list()) :: list()
  def concatenated_list(first_list, second_list) do
    first_list ++ second_list
  end

  @doc """
  Substract two lists.

  Elixir has a built-in operator for substracting two lists, `--`. This is called the List
  Substraction Operator and requires both operands to be lists.

  ## Examples
    iex> ListAndTuples.substract_list([1, 2, 3], [4, 5, 6])
    [1, 2, 3]
  """
  @spec substract_list(list(), list()) :: list()
  def substract_list(first_list, second_list) do
    first_list -- second_list
  end

  @doc """
  Get head and tail of list.

  This function receives a list and returns a value with the head and tail of the list.
  The head is the first element of the list and the tail is the rest of the list.

  ## Examples
    iex> ListAndTuples.determine_head_and_tail_list([1, 2, 3])
    :ok
  """
  @spec determine_head_and_tail_list(list()) :: :ok
  def determine_head_and_tail_list(list) do
    head = list |> hd() |> IO.inspect(label: "Head")

    tail = list |> tl() |> IO.inspect(label: "Tail")

    """
    Head: #{head}
    Tail: #{tail}
    """

    :ok
  end

  @doc """
  Count tuple size.

  This function receives a tuple and returns a string with the size of the tuple.

  ## Examples
    iex> ListAndTuples.count_tuple_size({1, 2, 3})
    "The size of the tuple is: 3"
  """
  @spec count_tuple_size(tuple()) :: String.t()
  def count_tuple_size(tuple) do
    tuple_size = tuple_size(tuple)

    "The size of the tuple is: #{tuple_size}"
  end

  @doc """
  Get tuple element.

  This function receives a tuple and an index, and returns a string with the element at that index.

  ## Examples
    iex> ListAndTuples.get_tuple_element({1, 2, 3}, 0)
    "The element at index 0 is: 1"
  """
  @spec get_tuple_element(tuple(), non_neg_integer()) :: String.t()
  def get_tuple_element(tuple, index) do
    element = elem(tuple, index)

    "The element at index #{index} is: #{element}"
  end

  @doc """
  Update tuple element.

  This function takes a tuple, a non-negative integer index, and a new value, and returns a new
  tuple with the element at the specified index replaced by the new value.
  """
  @spec update_tuple(tuple(), non_neg_integer(), any()) :: String.t()
  def update_tuple(tuple, index, value) do
    new_tuple = put_elem(tuple, index, value)

    "The new tuple is: #{inspect(new_tuple)}"
  end
end
