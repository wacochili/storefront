class ChangeProductIdOrders < ActiveRecord::Migration
  def change
    rename_column :orders, :product_id, :taco_id
  end
end
