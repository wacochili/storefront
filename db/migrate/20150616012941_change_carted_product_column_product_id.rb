class ChangeCartedProductColumnProductId < ActiveRecord::Migration
  def change
    rename_column :carted_products, :product_id, :taco_id
  end
end
