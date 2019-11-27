class Product < ApplicationRecord
  # validates :price, numericality: {less_than_or_equal_to: 100, greater_than_or_equal_to: 1}
  # validates :name, uniqueness: true
  # validates :description, length: {minimum: 10}

  has_many :images
  has_many :orders, through: :carted_product
  belongs_to :supplier

  has_many :product_categories
  has_many :categories, through: :product_categories

  # def supplier
  #   supplier = Supplier.find_by(id: supplier_id)
  # end


  def is_discounted?
    !(price >= 10)
  end

  def tax 
    tax_rate = 0.09
    price * tax_rate
  end

  def total
    price + tax
  end
  
end
