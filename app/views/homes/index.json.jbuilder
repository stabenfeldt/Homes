json.array!(@homes) do |home|
  json.extract! home, :name, :address, :longitude, :latitude
  json.url home_url(home, format: :json)
end
