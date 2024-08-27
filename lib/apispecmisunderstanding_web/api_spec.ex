defmodule ApispecmisunderstandingWeb.ApiSpec do
  @moduledoc false

  @behaviour OpenApiSpex.OpenApi

  alias ApispecmisunderstandingWeb.Endpoint
  alias ApispecmisunderstandingWeb.Router

  alias ApispecmisunderstandingWeb.Schemas.Abc.Working
  alias ApispecmisunderstandingWeb.Schemas.Abc.NotWorking

  alias OpenApiSpex.Components
  alias OpenApiSpex.Info
  alias OpenApiSpex.OpenApi
  alias OpenApiSpex.Paths
  alias OpenApiSpex.Server

  @impl OpenApi
  def spec do
    %OpenApi{
      servers: [
        # Populate the Server info from a phoenix endpoint
        Server.from_endpoint(Endpoint)
      ],
      info: %Info{
        title: "Api Spex Misunderstanding API",
        version: "1.0"
      },
      components: %Components{},
      security: [],
      # Populate the paths from a phoenix router
      paths: Paths.from_router(Router)
    }
    # Discover request/response schemas from path specs
    |> OpenApiSpex.resolve_schema_modules()
    |> OpenApiSpex.add_schemas([
      Working,
      NotWorking
    ])
  end
end
