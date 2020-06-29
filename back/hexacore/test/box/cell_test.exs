defmodule Hexacore.CellTest do
  @moduledoc false

  use ExUnit.Case, async: true

  alias Hexacore.Cell

  test "it builds a desert cell" do
    assert %Cell{
             id: _,
             type: :desert,
             odds: nil,
             description: "Produces nothing."
           } = Cell.desert()
  end

  test "it builds a pasture cell" do
    assert %Cell{
             id: _,
             type: :pasture,
             odds: 6,
             description: "Produces wool."
           } = Cell.pasture(6)
  end

  test "it builds a forest cell" do
    assert %Cell{
             id: _,
             type: :forest,
             odds: 6,
             description: "Produces wood."
           } = Cell.forest(6)
  end

  test "it builds a mountains cell" do
    assert %Cell{
             id: _,
             type: :mountains,
             odds: 6,
             description: "Produces ore."
           } = Cell.mountains(6)
  end

  test "it builds a fields cell" do
    assert %Cell{
             id: _,
             type: :fields,
             odds: 6,
             description: "Produces grain."
           } = Cell.fields(6)
  end

  test "it builds a hills cell" do
    assert %Cell{
             id: _,
             type: :hills,
             odds: 6,
             description: "Produces brick."
           } = Cell.hills(6)
  end
end
