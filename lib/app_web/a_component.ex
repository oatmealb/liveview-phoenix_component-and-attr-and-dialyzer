defmodule AWeb.AComponent do
  use Phoenix.Component

  # attr(:numbers, :list, required: true)
  attr(:numbers, Number, required: true)
  # attr(:numbers, N, required: true)

  @spec bar(%{numbers: list(pos_integer)}) :: any
  def bar(assigns) do
    ~H"""
    Interesting numbers:
    <%!-- <li :for={number <- @numbers}>
    <%= number %>
    </li> --%>
    <%= {@numbers.value} %>
    <%!-- <%= {@numbers.v} %> --%>
    """
  end
end
