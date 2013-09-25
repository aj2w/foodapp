class Product < ActiveRecord::Base
  has_and_belongs_to_many :wishlists
  belongs_to :user

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
end