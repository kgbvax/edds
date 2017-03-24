defmodule Store do
  @moduledoc """
  Abstract store for remembering fdyn entries.

  """

 
def init() do

  :ok
end

@doc """
Saves an fdyn record.
Expects a map %{ :ip => ip, :hostname => hostname,  :description => description}
"""
def put(fdynRec) do
  %FDynServicesDB.FdynService{ip: fdynRec.ip, hostname: fdynRec.hostname,description: fdynRec.description  }


end

@doc """
Retriecs an fdyn record.
Expects a map %{ :ip => ip, :hostname => hostname,  :description => description}
"""
def lookup(hname) do

end

def list() do
end

end
