defmodule Crm.StagesController do
  use Crm.Web, :controller
  alias Crm.Stage

  plug :action

  def index(conn, _params) do
    stages = Repo.all(Stage)
    render conn, stages: stages
  end
end
