Fabricator(:info_request) do
  carpool_id { Fabricate(:carpool).id }
end