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
  - `{:error, 404, "Data not found"}`
  - `{:error, 500, "Internal server error"}`

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
  Uses `case` to match a value against multiple patterns until a matching one is found with guards.

  This function receives a tuple with exactly 2 elements: an atom status code, and an HTTP status
  code. Each pattern has a guard that checks if the status code is within a specific range.

  - `{:info, 100}` is for informational responses that range from 100 to 199
  - `{:ok, 200}` is for successful responses that range from 200 to 299
  - `{:redirect, 300}` is for redirection responses that range from 300 to 399
  - `{:client_error, 400}` is for client error responses that range from 400 to 499
  - `{:server_error, 500}` is for server error responses that range from 500 to 599

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

  @doc """
  Checks if the HTTP status code is 200, returns "200 OK" if it matches.

  This function is an example of an `if` statement in Elixir. If the condition evaluates to
  `false` or `nil`, the function will return `nil`, and the body within the `do-end` block will not
  be executed.

  ## Examples

    iex> CaseCondIf.check_successful_response(200)
    "200 OK"
  """
  @spec check_successful_response(integer()) :: String.t()
  def check_successful_response(http_code) do
    if http_code === 200 do
      "#{http_code} OK"
    end
  end

  @doc """
  Checks if the HTTP status code is not 100 or 200, return string
  "<http_code>: SOMETHING INCORRECT" if it matches.

  This function is an example of an `unless` statement in Elixir. If the condition evaluates to
  `true`, the function will return `nil`, and the body within the `do-end` block will not
  be executed.

  ## Examples

    iex> CaseCondIf.check_issued_response(300)
    "300: SOMETHING INCORRECT"
  """
  @spec check_issued_response(integer()) :: String.t()
  def check_issued_response(http_code) do
    if !(http_code === 100 || http_code === 200) do
      "#{http_code}: SOMETHING INCORRECT"
    end
  end

  @doc """
  Checks if the HTTP status code is between 499 and 599, returns string
  "<http_code>: Yes, this is a server error!" if it matches.

  This function is an example of an `if-else` statement in Elixir. If the condition evaluates to
  `true`, the function will return the first body, otherwise it will return the second body.

  ## Examples

    iex> CaseCondIf.check_http_server_error(500)
    "500: Yes, this is a server error!"
  """
  @spec check_http_server_error(integer()) :: String.t()
  def check_http_server_error(http_code) do
    if http_code >= 499 and http_code <= 599 do
      "#{http_code}: Yes, this is a server error!"
    else
      "#{http_code}: No, this is not a server error!"
    end
  end

  @doc """
  Describes the HTTP method.

  This function is an example of the use of a `cond` statement in Elixir. It evaluates
  multiple conditions and returns the corresponding string for the first condition that
  evaluates to `true`. If none of the conditions match, it returns the default case,
  "Unknown HTTP method". Including the `true` keyword in the final condition helps prevent
  a `CondClauseError`.

  ## Examples

    iex> CaseCondIf.describe_http_method("GET")
    "The GET method requests a representation of the specified resource"
  """
  @spec describe_http_method(String.t()) :: String.t()
  def describe_http_method(http_method) do
    cond do
      "GET" == http_method ->
        "The GET method requests a representation of the specified resource"

      "POST" == http_method ->
        "The POST method submits data to the specified resource"

      "PUT" == http_method ->
        "The PUT method replaces all current representations of the target resource with the request payload"

      "DELETE" == http_method ->
        "The DELETE method deletes the specified resource"

      "PATCH" == http_method ->
        "The PATCH method applies partial modifications to a resource"

      "HEAD" == http_method ->
        "The HEAD method asks for a response identical to a GET request, but without the response body"

      "OPTIONS" == http_method ->
        "The OPTIONS method is used to describe the communication options for the target resource"

      true ->
        "Unknown HTTP method"
    end
  end
end
