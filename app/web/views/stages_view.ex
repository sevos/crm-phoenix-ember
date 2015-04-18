defmodule Crm.StagesView do
  use Crm.Web, :view

  def render("index.json", %{stages: stages}) do
    %{stages: stages}
  end
end
