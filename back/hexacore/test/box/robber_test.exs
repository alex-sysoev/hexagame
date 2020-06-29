defmodule Hexacore.RobberTest do
  @moduledoc false

  use ExUnit.Case, async: true

  alias Hexacore.Robber

  test "it builds a new robber structure" do
    assert %Robber{
             id: _,
             description: """
             It is moved only by rolling a '7' Y or playing 
             a Knight Y card. If the robber is moved to any 
             other terrain hex, it prevents that hex from 
             producing resources.
             """
           } = Robber.new()
  end
end
