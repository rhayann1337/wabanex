defmodule WabanexWeb.Resolvers.Training do
  def create(%{input: params}, _context), do: Wabanex.Trainings.Create.call(params)
  # def get(%{id: user_id}, _context), do: Wabanex.Trainings.Get.call(user_id)
end
