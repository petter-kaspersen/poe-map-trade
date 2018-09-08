defmodule TradeWeb.Router do
  use TradeWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TradeWeb do
    pipe_through :browser # Use the default browser stack

    get "/", TradeController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", TradeWeb do
  #   pipe_through :api
  # end
end
