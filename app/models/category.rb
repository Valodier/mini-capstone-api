class Category < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products
  ### This down here is the same as this line ^^^
  # def categories
  #   category_products.map do |category_product|
  #     category_product.category
  #   end   
  # end

end
