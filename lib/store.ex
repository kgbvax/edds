defmodule Store do
  @moduledoc """
  Abstract store for remembering fdyn entries.

  """

use Amnesia

def init() do
  Amnesia.start()
  :ok
end

@doc """
Saves an fdyn record.
Expects a map %{ :ip => ip, :hostname => hostname,  :description => description}
"""
def put(fdynRec) do
  Amnesia.transaction do
    %FDynServicesDB.FdynService{ip: fdynRec.ip, hostname: fdynRec.hostname,description: fdynRec.description  } |> FDynServicesDB.FdynService.write
  end
end

@doc """
Retriecs an fdyn record.
Expects a map %{ :ip => ip, :hostname => hostname,  :description => description}
"""
def lookup(hostname) do
  Amnesia.transaction do
    FDynServicesDB.FdynService.read(hostname)
  end
end

def list() do
end

end
