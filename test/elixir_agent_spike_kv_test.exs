defmodule ElixirAgentSpike.KVTest do
  use ExUnit.Case
  doctest ElixirAgentSpike

  test "stores values by key" do
    {:ok, _} = ElixirAgentSpike.KV.start_link
    assert ElixirAgentSpike.KV.get("milk") == nil

    ElixirAgentSpike.KV.put("milk", 3)
    assert ElixirAgentSpike.KV.get("milk") == 3
  end
end
