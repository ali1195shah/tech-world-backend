class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :image, :brand, :jewelry_type
end
