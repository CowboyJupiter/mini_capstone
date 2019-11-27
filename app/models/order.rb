class Order < ApplicationRecord
  

  belongs_to :product
  belongs_to :user
  has_many :products, through: :carted_products

  def friendly_created_at
    created_at.strftime("%m/%d/%y")
  end

end
