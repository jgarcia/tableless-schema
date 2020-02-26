defmodule ComplexForms.Accounts.Profile do
  @moduledoc """
  Schema definition for profiles
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "profiles" do
    field :first_name, :string
    field :last_name, :string

    timestamps()
  end

  def changeset(profile, attrs) do
    profile
    |> cast(attrs, [:first_name, :last_name])
  end
end
