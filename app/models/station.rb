class Station < ApplicationRecord
    validates :route_name, presence: true, length: { maximum: 20 }
    validates :station_name, presence: true, length: { maximum: 20 }
    validates :station_name, presence: true, length: { maximum: 20 }
end
