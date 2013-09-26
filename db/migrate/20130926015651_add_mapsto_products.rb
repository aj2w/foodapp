class AddMapstoProducts < ActiveRecord::Migration
  def change
    add_column :products, :latitude,  :float
    add_column :products, :longitude, :float
    add_column :products, :gmaps, :boolean
  end
end
