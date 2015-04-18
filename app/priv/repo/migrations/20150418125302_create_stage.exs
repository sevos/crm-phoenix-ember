defmodule Crm.Repo.Migrations.CreateStage do
  use Ecto.Migration

  def change do
    create table(:stages) do
      add :name, :string

      timestamps
    end
  end
end
