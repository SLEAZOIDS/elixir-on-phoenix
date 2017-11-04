defmodule Blog.Articles.Article do
  use Ecto.Schema
  import Ecto.Changeset
  alias Blog.Articles.Article


  schema "articles" do
    field :body, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Article{} = article, attrs) do
    article
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
