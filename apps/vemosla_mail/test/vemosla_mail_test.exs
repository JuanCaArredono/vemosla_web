defmodule VemoslaMailTest do
  use ExUnit.Case
  doctest VemoslaMail

  test "greets the world" do
    assert VemoslaMail.hello() == :world
  end
end
