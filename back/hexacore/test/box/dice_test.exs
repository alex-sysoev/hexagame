defmodule Hexacore.DiceTest do
  @moduledoc false

  use ExUnit.Case, async: true

  alias Hexacore.Dice

  test "it rolls dice and returns two random numbers" do
    seed = :erlang.now()
    assert {a, b} = Dice.roll(seed)
    assert a >= 1 && a <= 6
    assert b >= 1 && b <= 6
  end
end
