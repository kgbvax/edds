use Amnesia
defdatabase FDynServicesDB do
  # this defines a table with other attributes as ordered set, and defines an
  # additional index as email, this improves lookup operations
  deftable FdynService, [{ :id, autoincrement }, :ip, :hostname, :description], type: :ordered_set, index: [:hostname] do
  @type t :: %FdynService{id: non_neg_integer, ip: String.t, hostname: String.t, description: String.t}
  end
end
