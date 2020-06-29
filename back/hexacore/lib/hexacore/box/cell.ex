defmodule Hexacore.Cell do
  @moduledoc """
  Game cell representation structure.
  """

  @type t :: %__MODULE__{
          id: binary,
          type: :desert | :pasture | :forest | :mountains | :fields | :hills,
          odds: integer,
          description: binary
        }

  defstruct [:id, :type, :odds, :description]

  @doc """
  Builds a desert cell.
  """
  @spec desert() :: t
  def desert do
    cell(:desert, nil)
  end

  @doc """
  Builds a pasture cell.
  """
  @spec pasture(integer) :: t
  def pasture(odds) do
    cell(:pasture, odds)
  end

  @doc """
  Builds a forest cell.
  """
  @spec forest(integer) :: t
  def forest(odds) do
    cell(:forest, odds)
  end

  @doc """
  Builds a mountains cell.
  """
  @spec mountains(integer) :: t
  def mountains(odds) do
    cell(:mountains, odds)
  end

  @doc """
  Builds a fields cell.
  """
  @spec fields(integer) :: t
  def fields(odds) do
    cell(:fields, odds)
  end

  @doc """
  Builds a hills cell.
  """
  @spec hills(integer) :: t
  def hills(odds) do
    cell(:hills, odds)
  end

  defp cell(type, odds) do
    %__MODULE__{
      id: UUID.uuid4(),
      type: type,
      odds: odds,
      description: description(type)
    }
  end

  defp description(:desert), do: "Produces nothing."
  defp description(:pasture), do: "Produces wool."
  defp description(:forest), do: "Produces wood."
  defp description(:mountains), do: "Produces ore."
  defp description(:fields), do: "Produces grain."
  defp description(:hills), do: "Produces brick."
end
