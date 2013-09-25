class Product < ActiveRecord::Base
  has_and_belongs_to_many :wishlists
  belongs_to :user
end