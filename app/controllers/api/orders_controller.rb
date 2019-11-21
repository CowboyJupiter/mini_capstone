class Api::OrdersController < ApplicationController

  before_action :authenticate_user, only[:create]

  def index 
    
    @orders = Orders.current_user
    render 'index.json.jb'

  end 

  def create 

    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity])
    @order.save
    render 'order.json.jb'
  end   
end
