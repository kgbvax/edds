use Amnesia
defdatabase FDynServices do
  # this defines a table with other attributes as ordered set, and defines an
  # additional index as email, this improves lookup operations
  deftable Service, [{ :id, autoincrement }, :ip, :hostname, :description], type: :ordered_set, index: [:hostname] do
  @type t :: %Service{id: non_neg_integer, ip: String.t, hostname: String.t, description: String.t}
  end
end
