defmodule Hexacore.Dice do
  @moduledoc """
  This module is a representation of phisical dice.
  """

  @doc """
  Rolling the dice returns tuple with 2 random numbers from 1..6
  seeding with date argument.
  """
  @spec roll({integer, integer, integer}) :: {1..6, 1..6}
  def roll(seed = {_, _, _}) do
    :random.seed(seed)
    {:random.uniform(6), :random.uniform(6)}
  end
end
