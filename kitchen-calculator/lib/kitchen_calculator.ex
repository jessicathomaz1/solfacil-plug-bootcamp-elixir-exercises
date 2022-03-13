defmodule KitchenCalculator do
  @convertions %{
    cup: 240.0, 
    fluid_ounce: 30.0, 
    teaspoon: 5.0, 
    tablespoon: 15.0, 
    milliliter: 1.0
  }

  # Please implement the get_volume/1 function
  def get_volume(volume_pair), do: elem(volume_pair, 1)

  def to_milliliter({unit, volume} = _volume_pair) do
    # Please implement the to_milliliter/1 functions
    {:ok, metric} = Map.fetch(@convertions, unit)
    {:milliliter, metric * volume}
  end

  def from_milliliter({:milliliter, volume} = _volume_pair, unit) do
    # Please implement the from_milliliter/2 functions
    {:ok, new_metric} = Map.fetch(@convertions, unit)

    {unit, volume / new_metric}
  end

  def convert({origin_unit, volume} = _volume_pair, unit) do
    # Please implement the convert/2 function
    in_milliliter = to_milliliter({origin_unit, volume})

    from_milliliter(in_milliliter, unit)
  end
end
