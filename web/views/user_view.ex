defmodule PhoenixDiet.UserView do
  use PhoenixDiet.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, PhoenixDiet.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, PhoenixDiet.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      user_name: user.user_name,
      password_hash: user.password_hash}
  end
end
