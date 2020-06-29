defmodule Hexacore.Building do
  @moduledoc """
  Representation of a settlement figure.
  """

  @type t :: %__MODULE__{
          id: binary,
          color: Hexacore.color(),
          type: :road | :settlement | :city,
          description: binary
        }

  defstruct [:id, :color, :type, :description]

  @doc """
  Build new road structure with certain color.
  """
  @spec road(Hexacore.color()) :: t
  def road(color) do
    building(:road, color)
  end

  @doc """
  Build new settlement structure with certain color.
  """
  @spec settlement(Hexacore.color()) :: t
  def settlement(color) do
    building(:settlement, color)
  end

  @doc """
  Build new city structure with certain color.
  """
  @spec city(Hexacore.color()) :: t
  def city(color) do
    building(:city, color)
  end

  defp building(type, color) do
    %__MODULE__{
      id: UUID.uuid4(),
      color: color,
      type: type,
      description: description(type)
    }
  end

  defp description(:road), do: "The roads connect your settlements and cities."

  defp description(:settlement) do
    """
    A settlement is worth 1 victory point.
    Settlements are built on intersections.
    You share in all of the resource production 
    of each terrain hex adjacent to your settlements.
    """
  end

  defp description(:city) do
    """
    Each city is worth 2 victory points.
    You can only upgrade an existing settlement to a city.
    You receive double resource production 
    (2 resource cards) from the adjacent terrain 
    hexes whenever those numbers are rolled.
    """
  end
end
