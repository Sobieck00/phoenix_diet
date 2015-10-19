defmodule PhoenixDiet.Router do
  use PhoenixDiet.Web, :router

  #pipeline :browser do
  #  plug :accepts, ["html"]
  #  plug :fetch_session
  #  plug :fetch_flash
  #  plug :protect_from_forgery
  #  plug :put_secure_browser_headers
  #end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # Other scopes may use custom stacks.
  scope "/api", PhoenixDiet do
   pipe_through :api

   get "/read/:is/:lisa", WriteController, :lisa

   get "/write/:id", WriteController, :index

   resources "/users", UserController
  end
end
