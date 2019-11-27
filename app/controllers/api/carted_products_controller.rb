class Api::CartedProductsController < ApplicationController
  def index
    @carted_products = Carted_product.where[user_id: current_user.id].where(status: "carted")

    render 'index.json.jb'
  end

  def create
    @carted_product = Carted_product.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      order_id: params[:order_id],
      status: 'carted'


      )
    @carted_product.save
    render 'show.json.jb'
  end


  def destroy
    @carted_product = Carted_product.find_by(id: params[:id])
    @carted_product.status = "removed"
  end


end
