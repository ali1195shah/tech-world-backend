class Item < ApplicationRecord
    has_many :joiners
    has_many :orders, through: :joiners
    has_many :users, through: :orders
end
