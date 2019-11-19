class Api::SuppliersController < ApplicationController

  def create 
    @supplier = Supplier.new(
      name: params[:name], 
      email: params[:email],
      phone_number: params[:phone_number])
    @suppliers.save

    render 'supplier.json.jb'
  end



  def update
    
    @id = Supplier.find_by(id: the_id)
    @name = params[:name], 
    @email = params[:email], 
    @phone_number = params[:phone_number],
    render 'supplier.json.jb'
  end 

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
    render 'destroy.json.jb'
  end
end






























end
