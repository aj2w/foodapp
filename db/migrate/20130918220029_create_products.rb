class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :location
      t.float :price
      t.date :expiration
      t.string :storage
      t.string :pickup
    end
  end
end
