class Home
  include Mongoid::Document
  include Geocoder::Model::Mongoid
  
  field :name,        type: String
  field :address,     type: String
  field :coordinates, type: Array

  geocoded_by :address          # can also be an IP address
  after_validation :geocode     # auto-fetch coordinates
end
