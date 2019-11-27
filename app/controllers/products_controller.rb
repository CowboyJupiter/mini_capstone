class ProductsController < ApplicationController
  
  def show
    @products = Products.find_by(id: params[:id])
    render show.html.erb
  end



end
