defmodule PickupWeb.PageController do
  use PickupWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
