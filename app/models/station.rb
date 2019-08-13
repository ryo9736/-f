class Station < ApplicationRecord
  belongs_to :property, optional: true
  #validates :rout_name, :station_name, :time, presence: true
end