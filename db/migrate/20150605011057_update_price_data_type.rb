class UpdatePriceDataType < ActiveRecord::Migration
  def change
    change_table :tacos do |t|
      t.change :price, :decimal, precision: 4, scale: 2
    end
  end
end
