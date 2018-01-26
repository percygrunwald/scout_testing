defmodule ScoutTesting.Information.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias ScoutTesting.Information.User


  schema "users" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:name])
  end
end
