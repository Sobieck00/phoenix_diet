defmodule PhoenixDiet.RedisController do
  use PhoenixDiet.Web, :controller
  import Exredis

  alias Comeonin.Bcrypt

  def create(conn, %{"key" => key, "value" => value}) do
    #{:ok, params} = Comeonin.create_hash(password)

    #result = Bcrypt.checkpw(password, params)

    {:ok, client} = Exredis.start_link

    client |> Exredis.query ["SET", key, value]

    json conn, %{ message: "success!"}
  end

  def show(conn, %{"id" => id }) do

    {:ok, client} = Exredis.start_link

    result = client |> Exredis.query ["GET", id]

    json conn, %{ value: result }
  end
end
