class ProductsController < ApplicationController
  def index
    if params[:search].present?
      @products = Product.where(:name => params[:search])
    else
      @products = Product.all
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

  private
  #This is all my privates below
  def product_params
    params.require(:product).permit(:name, :description, :location, :price, :image_url, :image)
  end
end
