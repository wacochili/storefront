class AddSupplierId < ActiveRecord::Migration
  def change
    add_column :tacos, :supplier_id, :integer
  end
end
