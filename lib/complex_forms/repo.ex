defmodule ComplexForms.Repo do
  use Ecto.Repo,
    otp_app: :complex_forms,
    adapter: Ecto.Adapters.Postgres
end
