defmodule CryptexWeb.PageController do
  use CryptexWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
