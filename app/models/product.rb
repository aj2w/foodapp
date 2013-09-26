class Product < ActiveRecord::Base
  has_and_belongs_to_many :wishlists
  belongs_to :user

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

geocoded_by :location

acts_as_gmappable


def gmaps4rails_address
  location
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki

end

def gmaps4rails_infowindow
  "#{self.location}"
end
end