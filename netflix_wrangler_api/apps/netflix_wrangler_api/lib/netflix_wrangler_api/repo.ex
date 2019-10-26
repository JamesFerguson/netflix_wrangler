defmodule NetflixWranglerApi.Repo do
  use Ecto.Repo,
    otp_app: :netflix_wrangler_api,
    adapter: Ecto.Adapters.Postgres
end
