defmodule FawkesWeb.BlogController do
  use FawkesWeb, :controller
  alias FawkesWeb.BlogLayoutView

  def index(conn, _params) do
    conn
    |> put_layout({BlogLayoutView, "app.html"})
    |> render("index.html")
  end
end
