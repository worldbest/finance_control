json.array!(@wallets) do |wallet|
  json.extract! wallet, :id, :name, :wtype, :money
  json.url wallet_url(wallet, format: :json)
end
