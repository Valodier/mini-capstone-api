class Category < ApplicationRecord
  has_many :category_products

  def category_products.map |category_product| do
      category_product.product 
    end   
  end

end
