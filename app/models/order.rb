class Order < ApplicationRecord
  belongs_to :user

  has_many :joiners
  has_many :items, through: :joiners
end
