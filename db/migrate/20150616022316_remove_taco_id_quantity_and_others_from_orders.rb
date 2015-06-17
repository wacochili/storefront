class RemoveTacoIdQuantityAndOthersFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :taco_id, :integer
    remove_column :orders, :quantity, :integer
    remove_column :orders, "2", :decimal
    remove_column :orders, "4", :decimal
    remove_column :orders, "8", :decimal
  end
end
