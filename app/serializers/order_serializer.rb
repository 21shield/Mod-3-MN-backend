class OrderSerializer < ActiveModel::Serializer
  attributes :id, :number, :items, :order_items
  has_many :order_items
  
  
end
