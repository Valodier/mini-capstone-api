class Image < ApplicationRecord
  belongs_to :product
  #^^^ This is the same thing as product method, belongs_to is singluar = find_by
  # def product
  #   Product.find_by(id: supplier_id)
  # end
end
