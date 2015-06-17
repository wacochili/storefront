class RenameCategorizedProductTableToCategorizedTaco < ActiveRecord::Migration
  def change
    rename_table :carted_products, :carted_tacos
  end
end
