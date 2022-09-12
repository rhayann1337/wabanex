defmodule Wabanex.Exercises.Get do
  alias Wabanex.{Repo, Exercise}

  def call(id) do
    id
    |> Ecto.UUID.cast()
    |> handle_response()
  end

  defp handle_response(:error) do
    {:error, "Invalid UUID"}
  end

  defp handle_response({:ok, uuid}) do
    case Repo.get(Exercise, uuid) do
      nil -> {:error, "Exercise not found"}
      exercise -> {:ok, exercise}
    end
  end
end
