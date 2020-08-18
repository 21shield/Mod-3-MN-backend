class OrderSerializer < ActiveModel::Serializer
  attributes :id, :number, :items
  has_many :order_items
  
  
end
