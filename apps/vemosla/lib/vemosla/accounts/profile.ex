defmodule Vemosla.Accounts.Profile do
  use Ecto.Schema
  import Ecto.Changeset
  alias Vemosla.Accounts.User

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "profiles" do
    field :city, :string
    field :country, :string
    field :name, :string
    field :photo, :string, default: "/files/unknown.jpg"
    field belongs_to :user, User
    timestamps()
  end

  @doc false
  def changeset(profile, attrs) do
    profile
    |> cast(attrs, [:name, :photo, :city, :country])
    |> validate_required([:name, :photo, :city, :country])
  end
end
