defmodule AWeb.AComponent do
  use Phoenix.Component

  attr(:numbers, :list, required: true)

  @spec bar(%{numbers: list(pos_integer)}) :: any
  def bar(assigns) do
    ~H"""
    Interesting numbers:
    <li :for={number <- @numbers}>
    <%= number %>
    </li>
    """
  end
end
