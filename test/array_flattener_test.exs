defmodule ArrayFlattenerTest do
  use ExUnit.Case
  doctest ArrayFlattener

  test "empty array" do
    assert ArrayFlattener.flatten([]) == [], "empty array should be flattened to an empty array"
  end

  test "flat array" do
    assert ArrayFlattener.flatten([1, 2, 3]) == [1, 2, 3], "flat array should be flattened to the same array"
  end

  test "one level nested array" do
    assert ArrayFlattener.flatten([1, [4, 5, 6], 3]) == [1, 4, 5, 6, 3]
  end

end
