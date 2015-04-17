defmodule Crm.PageController do
  use Crm.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
