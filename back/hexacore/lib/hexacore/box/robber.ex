defmodule Hexacore.Robber do
  @moduledoc """
  Represent robber figure.
  """

  @type t :: %__MODULE__{
          id: binary,
          description: binary
        }

  defstruct [:id, :description]

  @doc """
  Build a robber structure. This function is used
  on game setup but not in game play.
  """
  @spec new() :: t
  def new do
    %__MODULE__{
      id: UUID.uuid4(),
      description: """
      It is moved only by rolling a '7' Y or playing 
      a Knight Y card. If the robber is moved to any 
      other terrain hex, it prevents that hex from 
      producing resources.
      """
    }
  end
end
