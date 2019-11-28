class ProductsController < ApplicationController
  
  def show
    @products = Products.find_by(id: params[:id])
    render show.html.erb
  end

  def index
    @products = Product.all 
    render 'index.html.erb'
  end

  def new
    @users = User.all
    render 'new.html.erb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    @product.save
    redirect_to 
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @product = Product.find_by(id:params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.image_url = params[:image_url]
    @product.description = params[:description]
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to "/products"
  end  

end
