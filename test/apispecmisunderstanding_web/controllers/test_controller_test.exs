defmodule ApispecmisunderstandingWeb.TestControllerTest do
  use ApispecmisunderstandingWeb.ConnCase

  test "POST /api_spec_test", %{conn: conn} do
    conn
    |> put_req_header("content-type", "application/json")
    |> post(~p"/api_spec/test", "[123]")
    |> json_response(201)
  end
end
