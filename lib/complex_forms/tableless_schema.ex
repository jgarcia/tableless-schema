defmodule ComplexForms.TablelessSchema do
  @moduledoc false

  defmacro __using__(schema) do
    quote do
      @tableless_schema unquote(schema)

      import Ecto.Changeset

      def __changeset__ do
        @tableless_schema
      end

      def process_params(params) do
        params
        |> cast
        |> validate
        |> apply_action(:insert)
      end

      defp cast(params) do
        fields = Map.keys(@tableless_schema)

        %__MODULE__{}
        |> cast(params, fields)
      end
    end
  end
end
