json.array!(@typews) do |typew|
  json.extract! typew, :id, :name
  json.url typew_url(typew, format: :json)
end
