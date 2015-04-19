defmodule Crm.StagesView do
  use Crm.Web, :view

  def render("index.json", %{stages: stages}) do
    %{stages: stages, meta: %{test_hot_deploy: 1}}
  end


  def render("create.json", %{stage: stage}) do
    render("show.json", %{stage: stage})
  end


  def render("show.json", %{stage: stage}) do
    %{stage: stage}
  end

  def render("delete.json", %{}) do
    %{}
  end
end
