defmodule PatternMatching do
  @moduledoc """
  Section Elixir Documentation #04 - Pattern Matching
  """

  @doc """
  Tuple pattern match.

  This function takes a tuple with three elements: a status, an HTTP code, and a message.
  It extracts each element and returns a string that includes the status, code, and body of the
  tuple.

  ## Examples

      iex> PatternMatching.tuple_match({:ok, 200, "Data fetched successfully"})
      "Status: ok, Code: 200, Body: Data fetched successfully"

  """
  @spec tuple_match(tuple()) :: String.t()
  def tuple_match(tuple) do
    {status, code, body} = tuple

    "Status: #{status}, Code: #{code}, Body: #{body}"
  end

  @doc """
  Tagged tuple pattern match.

  This function receives a tuple with exactly 3 elements: a status, an HTTP code, and a message.
  It pattern matches the tuple to ensure the status is `:ok`, and then returns a string
  with the status `ok`, code, and body of the tuple.

  ## Examples

      iex> PatternMatching.tagged_tuple_match({:ok, 200, "Data fetched successfully"})
      "Status: ok, Code: 200, Body: Data fetched successfully"

  """
  @spec tagged_tuple_match(tuple()) :: String.t()
  def tagged_tuple_match({status, code, body}) do
    {:ok, _, _} = {status, code, body}

    "Status: ok, Code: #{code}, Body: #{body}"
  end

  @doc """
  List pattern match.

  This function receives a list with exactly 3 elements: a brand, a price, and a category. The
  function will return a string with the brand, price, and category of the list.

  ## Examples

    iex> PatternMatching.list_match(["SnSV ROG Laptop", 3200, "Electronic"])
    "Brand: SnSV ROG Laptop, Price: 3200, Category: Electronic"

  """
  @spec list_match(list()) :: String.t()
  def list_match([brand, price, category]) do
    "Brand: #{brand}, Price: #{price}, Category: #{category}"
  end

  @doc """
  Head and tail list pattern match.

  This function receives a list and pattern matches the head and tail of the list. Then,
  it inspects both the head and the tail of the list and returns :ok.

  ## Examples

      iex> PatternMatching.head_and_tail_list_match(["SnSV ROG Laptop", 3200, "Electronic"])
      :ok

  """
  @spec head_and_tail_list_match(list()) :: :ok
  def head_and_tail_list_match(list) do
    [head | tail] = list

    IO.inspect(head, label: "Head")

    IO.inspect(tail, label: "Tail")

    :ok
  end

  @doc """
  Pin operator in tuple pattern match.

  This function receives 2 arguments: a pinned value and a tuple with exactly 3 elements.
  The function will then pattern match the tuple with exactly 3 elements and the first
  element of the tuple must equal the pinned value. The function returns an atom `:ok`.

  ## Examples

      iex> PatternMatching.pin_operator_in_tuple_match(:ok, {:ok, 200, "Data fetched successfully"})
      :ok

  """
  @spec pin_operator_in_tuple_match(any(), tuple()) :: :ok
  def pin_operator_in_tuple_match(pinned_value, {status, code, body}) do
    {^pinned_value, _, _} = {status, code, body}

    IO.inspect(pinned_value, label: "Pinned Value")

    :ok
  end

  @doc """
  Pin operator in list pattern match.

  This function takes two arguments: a pinned value and a list with any number of elements. It matches
  the head of the list with the pinned value. If the match is successful, it returns the atom `:ok`.

  ## Examples

      iex> PatternMatching.pin_operator_in_list_match("SnSV ROG Laptop", ["SnSV ROG Laptop", 3200, "Electronic"])
      :ok

  """
  @spec pin_operator_in_list_match(any(), list()) :: :ok
  def pin_operator_in_list_match(pinned_value, list) do
    [^pinned_value | _] = list

    IO.inspect(pinned_value, label: "Pinned Value")

    :ok
  end
end
