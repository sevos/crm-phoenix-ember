defmodule Crm.StagesControllerTest do
  use Crm.ConnCase
  alias Crm.Stage

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
end
