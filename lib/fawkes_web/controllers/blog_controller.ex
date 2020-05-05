defmodule FawkesWeb.BlogController do
  use FawkesWeb, :controller
  alias FawkesWeb.BlogLayoutView

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
end
