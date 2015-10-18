defmodule PhoenixDiet.WriteController do
  use PhoenixDiet.Web, :controller

  def index(conn, %{"id" => id}) do
    json conn, %{id: id}
  end

  def lisa(conn, %{"is" => is, "lisa" => lisa}) do
    json conn, %{
      is: is,
      lisa: lisa
    }
  end

end
