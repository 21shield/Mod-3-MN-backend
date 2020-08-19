class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :user
  has_one :item
end
