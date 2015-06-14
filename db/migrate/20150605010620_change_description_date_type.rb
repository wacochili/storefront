class ChangeDescriptionDateType < ActiveRecord::Migration
  def change
    change_table :tacos do |t|
      t.change :description, :text
    end
  end
end
