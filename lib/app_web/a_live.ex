defmodule AWeb.ALive do
  use AWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:number, A.Foo.number())}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <AWeb.AComponent.bar numbers={@number} />
    """
  end
end
