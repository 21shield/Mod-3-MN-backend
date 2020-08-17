class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  has_many :items, through: :order_items

  def items
    self.order_items.map {|order_item| order_item.item}
  end
end
