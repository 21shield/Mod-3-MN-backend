class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image, :description, :quantity, :category
 

end
