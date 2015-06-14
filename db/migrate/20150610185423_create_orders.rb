 class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :user_id
      t.decimal :tax, 2, 2
      t.decimal :subtotal, 4, 2
      t.decimal :total_price, 8, 2

      t.timestamps null: false
    end
  end
end
