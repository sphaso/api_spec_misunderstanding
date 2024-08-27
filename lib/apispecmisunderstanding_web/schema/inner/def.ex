defmodule ApispecmisunderstandingWeb.Schemas.Def do
  @moduledoc false

  require OpenApiSpex

  defmodule Submodule do
    @moduledoc false

    OpenApiSpex.schema(%{
      type: :integer
    })
  end
end
