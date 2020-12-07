class Item < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_many :orders, through: :order_items

  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews
  # this comment should be removed
end
