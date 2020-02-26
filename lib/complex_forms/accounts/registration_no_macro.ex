defmodule ComplexForms.Accounts.RegistrationNoMacro do
  @moduledoc """
  Complex validation
  """
  defstruct first_name: nil, last_name: nil, email: nil, password: nil

  @tableless_schema %{
    first_name: :string,
    last_name: :string,
    email: :string,
    password: :string
  }

  import Ecto.Changeset

  def submit(params) do
    case process_params(params) do
      {:ok, data} ->
        IO.inspect(data)

      {:error, changeset} ->
        IO.inspect(changeset)
    end
  end

  defp validate(changeset) do
    changeset
    |> validate_required([:email, :password])
  end

  def process_params(params) do
    params
    |> cast
    |> validate
    |> apply_action(:insert)
  end

  def __changeset__ do
    @tableless_schema
  end

  defp cast(params) do
    fields = Map.keys(@tableless_schema)

    %__MODULE__{}
    |> cast(params, fields)
  end
end
