class User < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :order_items, through: :orders
end
