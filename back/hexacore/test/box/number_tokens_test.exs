defmodule Hexacore.NumberTokensTest do
  @moduledoc false

  use ExUnit.Case, async: true

  alias Hexacore.NumberTokens

  test "it returns all tokens" do
    assert NumberTokens.all() == [
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
