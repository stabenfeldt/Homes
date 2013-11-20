class Home
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
  field :longitude, type: BigDecimal
  field :latitude, type: BigDecimal
end
