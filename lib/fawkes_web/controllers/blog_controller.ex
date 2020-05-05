defmodule FawkesWeb.BlogController do
  use FawkesWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
end
