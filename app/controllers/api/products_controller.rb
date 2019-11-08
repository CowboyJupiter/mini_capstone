class Api::ProductsController < ApplicationController
  def index 
    @product = Product.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render 'show.json.jb'
  end

  def create 
    @product = Product.new(
      title: params[:input_title], 
      price: params[:input_price], 
      image_url: params[:input_image_url],
      depscition: params[:input_description])
    @recipe.save
    render 'show.json.jb'
  end

  def update
    
    @product = Product.find_by(id: the_id)
    @title = params[:input_title], 
    @price = params[:input_price], 
    @image_url = params[:input_image_url],
    @depscition = params[:input_description]
    render 'show.json.jb'
  end 
  
end
