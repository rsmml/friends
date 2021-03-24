defmodule Friends.Person do
  use Ecto.Schema
  import Ecto.Changeset

  # def changeset(struct, params) do
  #   struct
  #   |> cast(params, [:name, :age])
  # end

  def changeset(struct, params) do
    struct
    |> cast(params, [:name, :age])
    |> validate_required([:name])
    |> validate_length(:name, min: 2)
  end

  schema "people" do
    field :name, :string
    field :age, :integer, default: 0
  end
end
