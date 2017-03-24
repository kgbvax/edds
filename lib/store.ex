defmodule Store do
  @moduledoc """
  Abstract store for remembering fdyn entries.

  """

  

def init() do

 end
@doc """
Saves an fdyn record.
Expects a map %{ :ip => ip, :hostname => hostname,  :description => description}
"""
def put(fdynRec) do
 end

@doc """
Retriecs an fdyn record.
Expects a map %{ :ip => ip, :hostname => hostname,  :description => description}
"""
def lookup(hostname) do
 end

def list() do
end

end
