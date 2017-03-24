defmodule StoreTest do
  use ExUnit.Case

  setup do
    Store.init()
    :ok
  end

  test "store_entry" do
    Store.put(%{ ip: "127.0.0.1", hostname: "localhost",
              description: "Localhost service"})
    Store.lookup("localhost")
    Store.put(%{ ip: "127.0.0.1", hostname: "localhost",
              description: "Localhost service"})
    
    Store.lookup("localhost")
    :ok
  end

end
