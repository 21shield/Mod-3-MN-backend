class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image, :description, :quantity, :category
  has_many :reviews

end
