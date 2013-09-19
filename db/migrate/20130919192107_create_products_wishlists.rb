class CreateProductsWishlists < ActiveRecord::Migration
  def change
    create_table :products_wishlists do |t|
      t.integer :wishlist_id
      t.integer :product_id
    end
  end
end
