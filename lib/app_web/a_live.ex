defmodule AWeb.ALive do
  use AWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:number, A.Foo.number())
     |> assign(:n, A.Foo.n()) # Foo.n/0 is @spec'ed to return N. Still, using @n in render/1 below doesn't produce a warning.
    }
  end

  @impl true
  def render(assigns) do
    ~H"""
    <AWeb.AComponent.bar numbers={@n} />
    """
  end
end
