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
      name: params[:name], 
      price: params[:price], 
      image_url: params[:image_url],
      depscription: params[:description])
    if  @product.save
      render 'show.json.jb'
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    
    @product = Product.find_by(id: the_id)
    @name = params[:name], 
    @price = params[:price], 
    @image_url = params[:image_url],
    @depscription = params[:description]
    if  @product.save
      render 'show.json.jb'
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end 

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render 'destroy.json.jb'
  end
end
