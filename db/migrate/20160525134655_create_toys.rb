class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :stock
      t.text :image
      t.string :codigo

      t.timestamps null: false
    end
  end
end
