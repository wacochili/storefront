class EditCategorizedTacoProductIdName < ActiveRecord::Migration
  def change
    rename_column :categorized_tacos, :product_id, :taco_id
  end
end
