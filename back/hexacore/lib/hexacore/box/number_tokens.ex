defmodule Hexacore.NumberTokens do
  @moduledoc """
  Tokens that represent chances of each tile.
  """

  @type token :: {2..6 | 8..12, chance :: number}

  @doc """
  Return all tokens. Each token is a tuple of 2 numbers.
  The first one is a sum of rolled dice and the secont is
  odds of the first number.
  """
  @spec all() :: [token]
  def all do
    [
      {2, 3},
      {3, 6},
      {3, 6},
      {4, 8},
      {4, 8},
      {5, 11},
      {5, 11},
      {6, 14},
      {6, 14},
      {8, 14},
      {8, 14},
      {9, 11},
      {9, 11},
      {10, 8},
      {10, 8},
      {11, 6},
      {11, 6},
      {12, 3}
    ]
  end
end
