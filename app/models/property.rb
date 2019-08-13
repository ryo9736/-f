class Property < ApplicationRecord
  has_many :stations
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank
  #validates :name, :price, :address, :age, :content, presence: true
end