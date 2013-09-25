class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :location
      t.float :price
      t.string :image_url
      t.integer :user_id
    end
  end
end
