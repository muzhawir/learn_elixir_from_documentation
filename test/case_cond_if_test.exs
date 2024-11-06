defmodule CaseCondIfTest do
  use ExUnit.Case, async: true

  doctest CaseCondIf

  describe "CaseCondIf.case_match_with_clause/1" do
    test "should return correct output that matches with clause" do
      assert CaseCondIf.case_match_with_clause({:ok, 200}) ===
               "Successful Response: 200"
    end
  end

  describe "CaseCondIf.check_successful_response/1" do
    test "should return correct output" do
      assert CaseCondIf.check_successful_response(200) === "200 OK"
    end
  end

  describe "CaseCondIf.check_issued_response/1" do
    test "should return correct output" do
      assert CaseCondIf.check_issued_response(300) === "300: SOMETHING INCORRECT"
    end
  end

  describe "CaseCondIf.check_http_server_error/1" do
    test "should return correct output" do
      assert CaseCondIf.check_http_server_error(500) === "500: Yes, this is a server error!"
    end
  end

  describe "CaseCondIf.describe_http_method/1" do
    test "should return HTTP method explanation in string" do
      assert CaseCondIf.describe_http_method("GET") ===
               "The GET method requests a representation of the specified resource"
    end
  end
end
