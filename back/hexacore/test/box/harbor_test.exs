defmodule Hexacore.HarborTest do
  @moduledoc false

  use ExUnit.Case, async: true

  alias Hexacore.Harbor

  test "it builds a wool harbor tile" do
    assert %Harbor{
             id: _,
             type: :wool,
             description: """
             Here you may exchange 2 wool cards 
             for any 1 other resource card during your trade 
             phase.
             """
           } = Harbor.wool()
  end

  test "it builds a lumber harbor tile" do
    assert %Harbor{
             id: _,
             type: :lumber,
             description: """
             Here you may exchange 2 lumber cards 
             for any 1 other resource card during your trade 
             phase.
             """
           } = Harbor.lumber()
  end

  test "it builds a brick harbor tile" do
    assert %Harbor{
             id: _,
             type: :brick,
             description: """
             Here you may exchange 2 brick cards 
             for any 1 other resource card during your trade 
             phase.
             """
           } = Harbor.brick()
  end

  test "it builds a ore harbor tile" do
    assert %Harbor{
             id: _,
             type: :ore,
             description: """
             Here you may exchange 2 ore cards 
             for any 1 other resource card during your trade 
             phase.
             """
           } = Harbor.ore()
  end

  test "it builds a grain harbor tile" do
    assert %Harbor{
             id: _,
             type: :grain,
             description: """
             Here you may exchange 2 grain cards 
             for any 1 other resource card during your trade 
             phase.
             """
           } = Harbor.grain()
  end

  test "it builds a generic harbor tile" do
    assert %Harbor{
             id: _,
             type: :generic,
             description: """
             Here you may exchange 3 identical resource cards 
             for any 1 other resource card during your trade 
             phase.
             """
           } = Harbor.generic()
  end
end
