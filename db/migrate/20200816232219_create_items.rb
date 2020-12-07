class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.text :description
      t.integer :quantity
      t.string :category

      t.timestamps
    end
  end
end
