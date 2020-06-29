defmodule Hexacore.Card do
  @moduledoc """
  Game card representation structure.
  """

  @type progress :: :monopoly | :road_building | :year_of_plenty
  @type victory_point :: :library | :market | :great_hall | :chapel | :university

  @type resource :: :wool | :lumber | :ore | :grain | :brick
  @type development :: :knight | progress | victory_point
  @type special :: :longest_road | :largest_army

  @type t :: %__MODULE__{
          id: binary,
          type: :resource | :development | :special,
          name: resource | development | special,
          description: binary,
          # Later here probably will be a function that applies an action of a card.
          effect: any
        }

  defstruct [:id, :type, :name, :description, :effect]

  @doc """
  Build a wool resource card.
  """
  @spec wool() :: t
  def wool do
    resource(:wool)
  end

  @doc """
  Build a lumber resource card.
  """
  @spec lumber() :: t
  def lumber do
    resource(:lumber)
  end

  @doc """
  Build a ore resource card.
  """
  @spec ore() :: t
  def ore do
    resource(:ore)
  end

  @doc """
  Build a grain resource card.
  """
  @spec grain() :: t
  def grain do
    resource(:grain)
  end

  @doc """
  Build a brick resource card.
  """
  @spec brick() :: t
  def brick do
    resource(:brick)
  end

  @doc """
  Build a knight development card.
  """
  @spec knight() :: t
  def knight do
    development(:knight)
  end

  @doc """
  Build a monopoly development card.
  """
  @spec monopoly() :: t
  def monopoly do
    development(:monopoly)
  end

  @doc """
  Build a road_building development card.
  """
  @spec road_building() :: t
  def road_building do
    development(:road_building)
  end

  @doc """
  Build a year_of_plenty development card.
  """
  @spec year_of_plenty() :: t
  def year_of_plenty do
    development(:year_of_plenty)
  end

  @doc """
  Build a library development card.
  """
  @spec library() :: t
  def library do
    development(:library)
  end

  @doc """
  Build a university development card.
  """
  @spec university() :: t
  def university do
    development(:university)
  end

  @doc """
  Build a market development card.
  """
  @spec market() :: t
  def market do
    development(:market)
  end

  @doc """
  Build a great_hall development card.
  """
  @spec great_hall() :: t
  def great_hall do
    development(:great_hall)
  end

  @doc """
  Build a chapel development card.
  """
  @spec chapel() :: t
  def chapel do
    development(:chapel)
  end

  @doc """
  Build a largest_army special card.
  """
  @spec largest_army() :: t
  def largest_army do
    special(:largest_army)
  end

  @doc """
  Build a longest_road special card.
  """
  @spec longest_road() :: t
  def longest_road do
    special(:longest_road)
  end

  defp resource(name) do
    %__MODULE__{
      id: UUID.uuid4(),
      type: :resource,
      name: name,
      description: "1 unit of #{name}.",
      effect: nil
    }
  end

  defp development(name) do
    %__MODULE__{
      id: UUID.uuid4(),
      type: :development,
      name: name,
      description: description(name),
      effect: nil
    }
  end

  defp special(name) do
    %__MODULE__{
      id: UUID.uuid4(),
      type: :special,
      name: name,
      description: description(name),
      effect: nil
    }
  end

  defp description(:knight) do
    """
    Move the robber. Steal 1 resource from the owner of a
    settlement or city adjacent to the robber’s new hex.
    """
  end

  defp description(:monopoly) do
    """
    When you play this card, announce 1 type of resource. 
    All other players must give you all of their resources 
    of that type.
    """
  end

  defp description(:road_building) do
    "Place 2 new roads as if you had just built them."
  end

  defp description(:year_of_plenty) do
    """
    Take any 2 resources from the bank. Add them to your 
    hand. They can be 2 of the same resource or 2 different 
    resources.
    """
  end

  defp description(vp) when vp in [:library, :market, :great_hall, :chapel, :university] do
    """
    Reveal this card on your turn if, with it, you reach 
    the number of points required for victory.
    """
  end

  defp description(:largest_army) do
    """
    The first player to play 3 knight cards gets this card. 
    Another player who plays more knight cards takes this card.
    """
  end

  defp description(:longest_road) do
    """
    This card goes to the player with the longest road of at 
    least 5 segments. Another player who builds a longer road 
    takes this card.
    """
  end
end
