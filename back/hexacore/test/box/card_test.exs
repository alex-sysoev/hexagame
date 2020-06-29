defmodule Hexacore.CardTest do
  @moduledoc false

  use ExUnit.Case, async: true

  alias Hexacore.Card

  @vp_description """
  Reveal this card on your turn if, with it, you reach 
  the number of points required for victory.
  """

  test "it builds a wool card" do
    assert %Card{
             id: _,
             type: :resource,
             name: :wool,
             description: "1 unit of wool.",
             effect: nil
           } = Card.wool()
  end

  test "it builds a lumber card" do
    assert %Card{
             id: _,
             type: :resource,
             name: :lumber,
             description: "1 unit of lumber.",
             effect: nil
           } = Card.lumber()
  end

  test "it builds a ore card" do
    assert %Card{
             id: _,
             type: :resource,
             name: :ore,
             description: "1 unit of ore.",
             effect: nil
           } = Card.ore()
  end

  test "it builds a grain card" do
    assert %Card{
             id: _,
             type: :resource,
             name: :grain,
             description: "1 unit of grain.",
             effect: nil
           } = Card.grain()
  end

  test "it builds a brick card" do
    assert %Card{
             id: _,
             type: :resource,
             name: :brick,
             description: "1 unit of brick.",
             effect: nil
           } = Card.brick()
  end

  test "it builds a knight card" do
    assert %Card{
             id: _,
             type: :development,
             name: :knight,
             description: """
             Move the robber. Steal 1 resource from the owner of a
             settlement or city adjacent to the robber’s new hex.
             """,
             effect: nil
           } = Card.knight()
  end

  test "it builds a monopoly card" do
    assert %Card{
             id: _,
             type: :development,
             name: :monopoly,
             description: """
             When you play this card, announce 1 type of resource. 
             All other players must give you all of their resources 
             of that type.
             """,
             effect: nil
           } = Card.monopoly()
  end

  test "it builds a road_building card" do
    assert %Card{
             id: _,
             type: :development,
             name: :road_building,
             description: "Place 2 new roads as if you had just built them.",
             effect: nil
           } = Card.road_building()
  end

  test "it builds a year_of_plenty card" do
    assert %Card{
             id: _,
             type: :development,
             name: :year_of_plenty,
             description: """
             Take any 2 resources from the bank. Add them to your 
             hand. They can be 2 of the same resource or 2 different 
             resources.
             """,
             effect: nil
           } = Card.year_of_plenty()
  end

  test "it builds a library card" do
    assert %Card{
             id: _,
             type: :development,
             name: :library,
             description: @vp_description,
             effect: nil
           } = Card.library()
  end

  test "it builds a university card" do
    assert %Card{
             id: _,
             type: :development,
             name: :university,
             description: @vp_description,
             effect: nil
           } = Card.university()
  end

  test "it builds a market card" do
    assert %Card{
             id: _,
             type: :development,
             name: :market,
             description: @vp_description,
             effect: nil
           } = Card.market()
  end

  test "it builds a great_hall card" do
    assert %Card{
             id: _,
             type: :development,
             name: :great_hall,
             description: @vp_description,
             effect: nil
           } = Card.great_hall()
  end

  test "it builds a chapel card" do
    assert %Card{
             id: _,
             type: :development,
             name: :chapel,
             description: @vp_description,
             effect: nil
           } = Card.chapel()
  end

  test "it builds a largest_army card" do
    assert %Card{
             id: _,
             type: :special,
             name: :largest_army,
             description: """
             The first player to play 3 knight cards gets this card. 
             Another player who plays more knight cards takes this card.
             """,
             effect: nil
           } = Card.largest_army()
  end

  test "it builds a longest_road card" do
    assert %Card{
             id: _,
             type: :special,
             name: :longest_road,
             description: """
             This card goes to the player with the longest road of at 
             least 5 segments. Another player who builds a longer road 
             takes this card.
             """,
             effect: nil
           } = Card.longest_road()
  end
end
