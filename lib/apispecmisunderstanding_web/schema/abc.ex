defmodule ApispecmisunderstandingWeb.Schemas.Abc do
  @moduledoc false

  alias OpenApiSpex.Reference
  alias OpenApiSpex.Schema

  require OpenApiSpex

  defmodule NotWorking do
    @moduledoc false

    OpenApiSpex.schema(%{
      type: :array,
      items: %Schema{
        anyOf: [
          %Reference{"$ref": "#/components/schemas/Submodule"}
        ]
      }
    })
  end

  defmodule Working do
    @moduledoc false

    OpenApiSpex.schema(%{
      type: :array,
      items: %Schema{
        anyOf: [
          ApispecmisunderstandingWeb.Schemas.Def.Submodule.schema()
        ]
      }
    })
  end

  defmodule Submodule do
    @moduledoc false

    OpenApiSpex.schema(%{
      type: :integer
    })
  end
end
