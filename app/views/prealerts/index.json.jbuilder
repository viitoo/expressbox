json.array!(@prealerts) do |prealert|
  json.extract! prealert, :id, :tracking_number, :curier, :shop, :value_price, :description
  json.url prealert_url(prealert, format: :json)
end
