class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :order, :item
  
end
