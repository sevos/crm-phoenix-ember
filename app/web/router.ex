defmodule Crm.Router do
  use Phoenix.Router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Crm do
    pipe_through :api

    resources "/stages", StagesController
  end
end
