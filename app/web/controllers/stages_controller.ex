defmodule Crm.StagesController do
  use Crm.Web, :controller
  alias Crm.Stage

  plug :action

  def index(conn, _params) do
    stages = Repo.all(Stage)
    render conn, stages: stages
  end

  def create(conn, params) do
    stage = Map.merge(%Stage{}, atomize_keys(params["stage"]))
    stage = Repo.insert(stage)
    render conn, stage: stage
  end

  defp atomize_keys(struct) do
    Enum.reduce struct, %{}, fn({k, v}, map) -> Map.put(map, String.to_atom(k), v) end
  end
end
