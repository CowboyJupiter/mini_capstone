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
    render 'new.html.erb'
  end

  

end
