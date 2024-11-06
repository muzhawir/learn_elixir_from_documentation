defmodule CaseCondIf do
  @moduledoc """
  Section Elixir Documentation #05 - case, cond, and if
  """

  @doc """
  Uses `case` to match a value against multiple patterns until a matching one is found.

  This function receives a tuple with exactly 3 elements: an atom status code, an HTTP status code,
  and a message. The function will check for 4 specific patterns:

  - `{:ok, 200, "Data fetched successfully"}`
  - `{:ok, 308, "Data fetched successfully"}`
  - `{:error, 404, "Data fetched successfully"}`
  - `{:error, 500, "Data fetched successfully"}`

  If none of these patterns match, the function will return `"Invalid response"`.

  ## Examples

    iex> CaseCondIf.case_match({:ok, 200, "Data fetched successfully"})
    "Success: Data fetched successfully"

  """
  @spec case_match(tuple()) :: String.t()
  def case_match(tuple) do
    case tuple do
      {:ok, 200, messages} -> "Success: #{messages}"
      {:ok, 308, messages} -> "Redirect: #{messages}"
      {:error, 404, messages} -> "Not Found: #{messages}"
      {:error, 500, messages} -> "Internal Server Error: #{messages}"
      _ -> "Invalid response"
    end
  end
end
