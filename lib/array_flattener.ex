defmodule ArrayFlattener do

  def flatten(array) when is_list(array) do
    flatten(array, [])
      |> Enum.reverse
  end

  defp flatten(array, result) when is_list(array) do
    Enum.reduce(array, result, &flatten/2)
  end

  defp flatten(value, result) when is_integer(value) do
    [value | result]
  end

end
