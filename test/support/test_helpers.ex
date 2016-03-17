defmodule Exchat.TestHelpers do
  alias Exchat.{Repo, User, Channel}

  def insert_user(attrs \\ %{}) do
    changes = Map.merge(%{
      email: "tony@ex.chat",
      password: "password"
    }, attrs)

    %User{}
    |> User.changeset(changes)
    |> Repo.insert!
  end

  def insert_channel(attrs \\ %{}) do
    changes = Map.merge(%{
      name: "general"
    }, attrs)
    %Channel{}
    |> Channel.changeset(changes)
    |> Repo.insert!
  end
end
