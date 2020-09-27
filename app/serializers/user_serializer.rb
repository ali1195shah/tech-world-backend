class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :phone, :address

  has_many :cards
  has_many :orders
end
