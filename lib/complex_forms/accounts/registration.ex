defmodule ComplexForms.Accounts.Registration do
  @moduledoc """
  Complex validation
  """
  defstruct first_name: nil, last_name: nil, email: nil, password: nil

  use ComplexForms.TablelessSchema, %{
    first_name: :string,
    last_name: :string,
    email: :string,
    password: :string
  }

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
end
