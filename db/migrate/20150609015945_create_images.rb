class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url
      t.string :taco_id

      t.timestamps null: true
    end
  end
end
