defmodule PhoenixDiet.UserTest do
  use PhoenixDiet.ModelCase

  alias PhoenixDiet.User

  @valid_attrs %{password_hash: "some content", user_name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
