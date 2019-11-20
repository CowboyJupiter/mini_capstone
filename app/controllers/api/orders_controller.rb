class Api::OrdersController < ApplicationController
  def create 
    @order = Order.new (
      user_id: params[:user_id],
      product_id: params[:product_id],
      quatity: params[:quantity])
    order.save
  end   
end
