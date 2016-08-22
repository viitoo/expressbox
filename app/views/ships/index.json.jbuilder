json.array!(@ships) do |ship|
  json.extract! ship, :id, :address, :city, :state, :zip, :country, :phone
  json.url ship_url(ship, format: :json)
end
