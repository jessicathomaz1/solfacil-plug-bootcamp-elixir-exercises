defmodule BirdCount do
  # Please implement the today/1 function
  def today([today | _tail] = _list), do: today
  def today([]), do: nil

  # Please implement the increment_day_count/1 function
  def increment_day_count([head | _tail] = list), do: List.replace_at(list, 0, head + 1)
  def increment_day_count([]), do: ([1])

  # Please implement the has_day_without_birds?/1 function
  def has_day_without_birds?(list), do: Enum.member?(list, 0)

  # Please implement the total/1 function
  def total(list), do: Enum.sum(list)
    
  # Please implement the busy_days/1 function
  def busy_days(list), do: Enum.filter(list, &(&1 >= 5)) |> length()
end
