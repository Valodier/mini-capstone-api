class Product < ApplicationRecord
  # validates :price, numericality: {only_decimal: true}
  # validates :name, length: {minimum: 2}
  # validates :name, presence: true
  # validates :name, uniqueness: true
  
  belongs_to :supplier
  #^^^ this is the same as supplier method, belongs_to is singular = find_by
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  #^^^ This is the same as images method, has_many is plural = .where
  # def images
  #   Image.where(product_id: id)
  # end

  def is_discounted
    price <= 10
  end

  def tax
    tax = price * 0.09
    return tax.round(2)
  end

  def total
    tax + price
  end

end
