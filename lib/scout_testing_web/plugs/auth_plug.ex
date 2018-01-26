defmodule ScoutTestingWeb.Plugs.Auth do
  alias ScoutTesting.Information

  def init(opts), do: opts

  def call(conn, _opts) do
    Information.create_user(%{})
    conn
  end
end
