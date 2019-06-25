class Rollercoaster < ApplicationRecord
  belongs_to :park
  has_many :rider_rollercoasters
  has_many :riders, through: :rider_rollercoasters

  validates :name, :height, :location, :length, presence: true
end
