defmodule Syncd.Router do
  use Syncd.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Syncd do
    pipe_through :api
  end
end
