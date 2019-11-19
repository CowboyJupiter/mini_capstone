class Api::ProductsController < ApplicationController
  def index 
    @product = Product.all
    if params[:search]
      @product = Product.where("name LIKE ?", "%#{params[:search]}%")
    end
    if params[:discount] == 'true'
      @product = @product.where("price < ?", 2)
    end
    if params[:sort] && params[:sort_order]
      @product = products.order(:price => :d)
    elsif params[:sort] =='price'
      @product = @product.order(:price => :asc)
    else
      @product = @product.order(:id)
    end
    # @product = Product.all.order(:price)
    # @product = Product.all.order(:price => :desc)

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
      description: params[:description])
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
