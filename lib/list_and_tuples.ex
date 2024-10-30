defmodule ListAndTuples do
  @moduledoc """
  Section Elixir Documentation #03 - List and Tuples
  """

  @doc """
  Count list length

  ## Examples
  iex> ListAndTuples.count_list_length([1, :atom, true, "elixir"])
  4
  """
  @spec count_list_length(list()) :: non_neg_integer()
  def count_list_length(list) do
    length(list)
  end

  @doc """
  Get list length

  ## Examples
  iex> ListAndTuples.get_list_length([1, :atom, true, "elixir"])
  "The length of the list is: 4"
  """
  @spec get_list_length(list()) :: String.t()
  def get_list_length(list) do
    list_length = length(list)

    "The length of the list is: #{list_length}"
  end

  @doc """
  Concatenate two lists

  ## Examples
  iex> ListAndTuples.concatenated_list([1, 2, 3], [4, 5, 6])
  [1, 2, 3, 4, 5, 6]
  """
  @spec concatenated_list(list(), list()) :: list()
  def concatenated_list(first_list, second_list) do
    first_list ++ second_list
  end

  @doc """
  Substract two lists

  ## Examples
  iex> ListAndTuples.substract_list([1, 2, 3], [4, 5, 6])
  [1, 2, 3]
  """
  @spec substract_list(list(), list()) :: list()
  def substract_list(first_list, second_list) do
    first_list -- second_list
  end

  @doc """
  Get head and tail of list

  ## Examples
  iex> ListAndTuples.determine_head_and_tail_list([1, 2, 3])
  :ok
  """
  @spec determine_head_and_tail_list(list()) :: :ok
  def determine_head_and_tail_list(list) do
    IO.inspect(hd(list))
    IO.inspect(tl(list))

    :ok
  end

  @doc """
  Count tuple size

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
  Get tuple element

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
  Update tuple element
  """
  @spec update_tuple(tuple(), non_neg_integer(), any()) :: String.t()
  def update_tuple(tuple, index, value) do
    new_tuple = put_elem(tuple, index, value)

    "The new tuple is: #{inspect(new_tuple)}"
  end
end
