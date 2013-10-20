class WelcomeController < ApplicationController

  def index
    @json = Product.all.to_gmaps4rails
  end

  def search
  end
end