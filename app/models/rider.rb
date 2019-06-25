class Rider < ApplicationRecord
  has_many :rider_rollercoasters
  has_many :rollercoasters, through: :rider_rollercoasters
end
