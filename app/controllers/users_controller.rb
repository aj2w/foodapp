class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @products = Product.where(:user_id => params[:id])
    @json = Product.where(:user_id => params[:id]).to_gmaps4rails

  end

end