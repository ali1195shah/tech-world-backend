class CardSerializer < ActiveModel::Serializer
  attributes :id, :card_type, :card_number, :cvv, :expire_date, :name_on_card
end
