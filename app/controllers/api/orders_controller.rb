class Api::OrdersController < ApplicationController

  

  def create 

    product =

    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity])

    @order.save
    render 'order.json.jb'
  end   
end
