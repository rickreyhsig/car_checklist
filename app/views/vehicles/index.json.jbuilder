json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :ext_color, :int_color, :lat, :long, :make, :mileage, :model, :vehicle_type, :price, :stocknum, :vin, :year
  json.url vehicle_url(vehicle, format: :json)
end
