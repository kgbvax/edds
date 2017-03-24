defmodule StoreTest do
   use ExUnit.Case

setup do
  Store.init()
end

test "store_entry" do
  Store.put(%{ ip: "127.0.0.1", hostname: "localhost", description: "Localhost service"})
  entry=Store.lookup("localhost")
  assert "127.0.0.1" = entry.ip
end

end
