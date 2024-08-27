defmodule ApispecmisunderstandingWeb.TestController do
  use ApispecmisunderstandingWeb, :controller
  use OpenApiSpex.ControllerSpecs

  alias ApispecmisunderstandingWeb.Schemas.Abc.NotWorking

  plug(OpenApiSpex.Plug.CastAndValidate)

  operation(:create,
    summary: "Plug works but cast_value does not?",
    description: """
    """,
    parameters: [],
    request_body: {"NotWorking", "application/json", NotWorking},
    responses: []
  )

  def create(conn, _params) do
    conn
    |> put_status(201)
    |> json(%{})
  end
end
