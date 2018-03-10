defmodule StWeb.PageController do
  use StWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
