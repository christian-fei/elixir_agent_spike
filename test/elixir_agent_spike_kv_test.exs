defmodule ElixirAgentSpike.KVTest do
  use ExUnit.Case
  doctest ElixirAgentSpike

  test "stores values by key" do
    {:ok, bucket} = ElixirAgentSpike.KV.start_link
    assert ElixirAgentSpike.KV.get(bucket, "milk") == nil

    ElixirAgentSpike.KV.put(bucket, "milk", 3)
    assert ElixirAgentSpike.KV.get(bucket, "milk") == 3
  end
end
