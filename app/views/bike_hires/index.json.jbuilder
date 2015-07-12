json.array!(@bike_hires) do |bike_hire|
  json.extract! bike_hire, :id, :name, :price, :manufacturer, :image
  json.url bike_hire_url(bike_hire, format: :json)
end
