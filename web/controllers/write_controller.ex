defmodule PhoenixDiet.WriteController do
  use PhoenixDiet.Web, :controller
  import Exredis

  alias Comeonin.Bcrypt

  def index(conn, %{"name" => name, "password" => password}) do
    {:ok, params} = Comeonin.create_hash(password)

    result = Bcrypt.checkpw(password, params)

    {:ok, client} = Exredis.start_link

    client |> Exredis.query ["SET", name, params]

    json conn, %{result: result, hash: params}
  end

  def lisa(conn, %{"is" => is, "lisa" => lisa}) do
    json conn, %{
      is: is,
      lisa: lisa
    }
  end
end
