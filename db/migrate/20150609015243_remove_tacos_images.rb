class RemoveTacosImages < ActiveRecord::Migration
  def change
    change_table :tacos do |t|
      t.remove :image
    end
  end
end
