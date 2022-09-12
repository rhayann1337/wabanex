defmodule Wabanex.Exercises.Create do
  alias Wabanex.{Repo, Exercise}

  def call(params) do
    params
    |> Exercise.changeset()
    |> Repo.insert()
  end
end
