defmodule TradeWeb.PageController do
  use TradeWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
