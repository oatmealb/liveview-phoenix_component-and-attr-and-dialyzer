defmodule Number do
  defstruct [:value]
  @type t :: %Number{value: integer()}
end
defmodule N do
  defstruct [:v]
  @type t :: %N{v: integer()}
end
defmodule A.Foo do
  @spec number() :: Number.t
  def number() do
    %Number{value: 1729}
  end
  @spec n() :: N.t
  def n() do
    %N{v: 1729}
  end
end
