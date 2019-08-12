class Property < ApplicationRecord
    validates :name, presence: true, length: { maximum: 20 }
    validates :price, presence: true, length: { maximum: 15 }
    validates :adress, presence: true, length: { maximum: 20 }
    validates :adress, presence: true, length: { maximum: 10 }
    validates :content, presence: true, length: { maximum: 50 }
end


