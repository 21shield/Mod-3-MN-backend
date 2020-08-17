class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image, :description, :quantity, :category
  has_many :order_items, only: [:order_id, :item_id]

end
