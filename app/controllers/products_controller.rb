class ProductsController < ApplicationController
  def index
    if params[:search].present?
      @products = Product.near(params[:search], 50)
      @json = Product.near(params[:search], 50).to_gmaps4rails
    else
      @products = Product.all
      @json = Product.all.to_gmaps4rails
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    # if user_signed_in?
    @product.save
    redirect_to root_path
    # else
    #   redirect_to new_user_session_path
    # end
  end

  def location
    @json = Product.all.to_gmaps4rails
  end

  private
  #This is all my privates below
  def product_params
    params.require(:product).permit(:name, :description, :location, :price, :image_url, :image)
  end
end
