class Home
  include Mongoid::Document
  include Geocoder::Model::Mongoid
  
  field :name,        type: String
  field :address,     type: String
  field :coordinates, type: Array

  geocoded_by :address          # can also be an IP address
  after_validation :geocode     # auto-fetch coordinates

  def latitude
    coordinates.last
  end

  def longitude
    coordinates.first
  end

  def to_a28
    distance_from([59.9134675, 10.7420401])
  end
end

