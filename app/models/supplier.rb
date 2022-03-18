class Supplier < ApplicationRecord
  has_many :products
  # ^^^ This is the same as below 
  # def products
  #   Product.where(supplier_id: id)    
  # end

end
