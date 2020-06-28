defmodule Hexacore.Harbor do
  @moduledoc """
  Game harbor tile representation structure.
  """

  @type t :: %__MODULE__{
          id: binary,
          type: :wool | :brick | :lumber | :grain | :ore | :generic,
          description: binary
        }

  defstruct [:id, :type, :description]

  @doc """
  Build wool resource harbor.
  """
  @spec wool() :: t
  def wool do
    build_harbor(:wool)
  end

  @doc """
  Build brick resource harbor.
  """
  @spec brick() :: t
  def brick do
    build_harbor(:brick)
  end

  @doc """
  Build lumber resource harbor.
  """
  @spec lumber() :: t
  def lumber do
    build_harbor(:lumber)
  end

  @doc """
  Build grain resource harbor.
  """
  @spec grain() :: t
  def grain do
    build_harbor(:grain)
  end

  @doc """
  Build ore resource harbor.
  """
  @spec ore() :: t
  def ore do
    build_harbor(:ore)
  end

  @doc """
  Build generic resource harbor.
  """
  @spec generic() :: t
  def generic do
    build_harbor(:generic)
  end

  defp build_harbor(type) do
    %__MODULE__{
      id: UUID.uuid4(),
      type: type,
      description: description(type)
    }
  end

  defp description(:generic) do
    """
    Here you may exchange 3 identical resource cards 
    for any 1 other resource card during your trade 
    phase.
    """
  end

  defp description(type) do
    """
    Here you may exchange 2 #{type} cards 
    for any 1 other resource card during your trade 
    phase.
    """
  end
end
