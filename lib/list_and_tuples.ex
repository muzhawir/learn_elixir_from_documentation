defmodule ListAndTuples do
  @moduledoc """
  Section Elixir Documentation #03 - Lists and Tuples
  """

  @doc """
  Count the length of a list.

  This function demonstrates the use of the `length/1` function from the Erlang standard library,
  which receives a list and returns its length.

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

  This function demonstrates the use of the `++` operator, which receives two lists and returns
  a new list containing the elements of both lists.

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

  This function receives two lists and returns a new list containing the elements of the first
  list that are not in the second list.

  ## Examples
      iex> ListAndTuples.substract_list([1, 2, 3], [4, 5, 6])
      [1, 2, 3]

  """
  @spec substract_list(list(), list()) :: list()
  def substract_list(first_list, second_list) do
    first_list -- second_list
  end

  @doc """
  Get head and tail of list and return :ok.

  This function receives a list and prints the head and tail of the list.
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

  This function receives a tuple and returns a string indicating its size. It leverages the
  `tuple_size/1` function from the Erlang standard library.

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

  This function receives a tuple and an index, and returns a string indicating the element at that
  index.

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

  This function receives a tuple, an index, and a new value. It returns a string indicating the
  updated tuple after replacing the element at the specified index with the new value.
  """
  @spec update_tuple(tuple(), non_neg_integer(), any()) :: String.t()
  def update_tuple(tuple, index, value) do
    new_tuple = put_elem(tuple, index, value)

    "The new tuple is: #{inspect(new_tuple)}"
  end
end
