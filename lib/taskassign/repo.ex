defmodule Taskassign.Repo do
  use Ecto.Repo,
    otp_app: :taskassign,
    adapter: Ecto.Adapters.Postgres
end
