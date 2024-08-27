defmodule ApispecmisunderstandingWeb.SchemaTest do
  use ExUnit.Case, async: true
  alias ApispecmisunderstandingWeb.Schemas.Abc.NotWorking
  alias ApispecmisunderstandingWeb.Schemas.Abc.Working

  @payload [123]

  describe "cast_value/2" do
    test "Not working" do
      assert_raise UndefinedFunctionError, fn -> OpenApiSpex.cast_value(@payload, NotWorking.schema()) end
    end

    test "Working" do
      assert {:ok, _result} = OpenApiSpex.cast_value(@payload, Working.schema())
    end
  end
end
