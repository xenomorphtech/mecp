defmodule MecpTest do
  use ExUnit.Case
  doctest Mecp

  test "greets the world" do
    assert Mecp.hello() == :world
  end
end
