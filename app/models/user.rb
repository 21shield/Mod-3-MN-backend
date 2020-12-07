class User < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :order_items, through: :orders
    has_many :reviews, dependent: :destroy
    has_many :items, through: :reviews
end
