class User < ApplicationRecord
    has_many :cards
    has_many :orders
    has_many :joiners, through: :orders
    has_many :items, through: :joiners
end
