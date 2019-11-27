class Api::OrdersController < ApplicationController

  before_action :authenticate_user, only[:create]

  def index 
    
    @orders = Orders.current_user
    render 'index.json.jb'

  end 

  def create 

    @order = Order.new(
      user_id: params[:user_id] 
      subtotal: params[:subtotal]
      tax: params[:]
      total: params[:]

    @order.save
    render 'order.json.jb'
  end   
end


#order = 