defmodule Crm.StagesControllerTest do
  use Crm.ConnCase
  alias Crm.Stage
  #import Ecto.Query

  test "GET /api/stages" do
    stages =
      %Stage{name: "Cold contact"} |>
      Repo.insert |>
      List.wrap

    expected_json =
      %{stages: stages} |>
      Poison.encode!

    response = get conn(), "/api/stages"
    assert response.status == 200
    assert response.resp_body == expected_json
  end

  test "POST /api/stages" do
    payload = %{stage: %{name: "Test stage"}}
    response = post conn(), "/api/stages", payload
    assert response.status == 201
    created_stage = response.resp_body |> Poison.decode!
    id = created_stage["stage"]["id"]
    stage = Repo.get(Stage, id)
    assert stage.name == "Test stage"
  end
end
