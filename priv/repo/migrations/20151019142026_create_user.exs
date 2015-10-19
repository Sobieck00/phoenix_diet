defmodule PhoenixDiet.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :user_name, :string
      add :password_hash, :string

      timestamps
    end

  end
end
