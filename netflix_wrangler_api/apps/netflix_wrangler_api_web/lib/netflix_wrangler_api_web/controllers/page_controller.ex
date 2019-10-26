defmodule NetflixWranglerApiWeb.PageController do
  use NetflixWranglerApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
