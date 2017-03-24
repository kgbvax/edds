defmodule Store do
  @moduledoc """
  Abstract store for remembering fdyn entries.

  """


def init() do

  ConCache.start_link([], name: :fdyn_cache, touch_on_read: true, ttl: 60*60*1000, ttl_check: 60*1000)
end
@doc """
Saves an fdyn record.
Expects a map %{ :ip => ip, :hostname => hostname,  :description => description}
"""
def put(fdynRec) do
  ConCache.put(:fdyn_cache, fdynRec.hostname, fdynRec)
end

@doc """
Retriecs an fdyn record.
Expects a map %{ :ip => ip, :hostname => hostname,  :description => description}
"""
def lookup(hostname) do
  ConCache.get(:fdynCache, hostname)
end

def list() do
end

end
