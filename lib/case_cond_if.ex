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

  @doc """
  Uses `case` to match a value against multiple patterns until a matching one is found with a guard.

  This function receives a tuple with exactly 2 elements: an atom status code, and a http status
  code. Each pattern has a guard that checks if the status code ranges.

  - `{:info, 100}` is for informational responses ranged from 100 to 199
  - `{:ok, 200}` is for successful responses ranged from 200 to 299
  - `{:redirect, 300}` is for redirection responses ranged from 300 to 399
  - `{:client_error, 400}` is for client error responses ranged from 400 to 499
  - `{:server_error, 500}` is for server error responses from 500 to 599

  If none of these patterns match, the function will return `"Invalid response"`.

  ## Examples

    iex> CaseCondIf.case_match_with_clause({:ok, 200})
    "Successful Response: 200"
  """
  @spec case_match_with_clause(tuple()) :: String.t()
  def case_match_with_clause(tuple) when is_tuple(tuple) do
    case tuple do
      {:info, code} when code >= 100 and code <= 199 -> "Informational Response: #{code}"
      {:ok, code} when code >= 200 and code <= 299 -> "Successful Response: #{code}"
      {:redirect, code} when code >= 300 and code <= 399 -> "Redirection Response: #{code}"
      {:client_error, code} when code >= 400 and code <= 499 -> "Client Error Response: #{code}"
      {:server_error, code} when code >= 500 and code <= 599 -> "Server Error Response: #{code}"
      _ -> "Invalid response"
    end
  end
end
