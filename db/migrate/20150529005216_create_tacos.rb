class CreateTacos < ActiveRecord::Migration
  def change
    create_table :tacos do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.string :image
      t.string :description
      t.string :rating

      t.timestamps null: false
    end
  end
end
