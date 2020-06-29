defmodule Hexacore.BuildingTest do
  @moduledoc false

  use ExUnit.Case, async: true

  alias Hexacore.Building

  test "it builds a new road structure" do
    assert %Building{
             id: _,
             color: :red,
             type: :road,
             description: "The roads connect your settlements and cities."
           } = Building.road(:red)
  end

  test "it builds a new settlement structure" do
    assert %Building{
             id: _,
             color: :white,
             type: :settlement,
             description: """
             A settlement is worth 1 victory point.
             Settlements are built on intersections.
             You share in all of the resource production 
             of each terrain hex adjacent to your settlements.
             """
           } = Building.settlement(:white)
  end

  test "it builds a new city structure" do
    assert %Building{
             id: _,
             color: :blue,
             type: :city,
             description: """
             Each city is worth 2 victory points.
             You can only upgrade an existing settlement to a city.
             You receive double resource production 
             (2 resource cards) from the adjacent terrain 
             hexes whenever those numbers are rolled.
             """
           } = Building.city(:blue)
  end
end
