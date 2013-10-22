class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @products = Product.where(:user_id => params[:id])
    @json = Product.where(:user_id => params[:id]).to_gmaps4rails

    email = @user.email
    @url_hash = Digest::MD5.hexdigest(email)
  end

end