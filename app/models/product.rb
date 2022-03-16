class Product < ApplicationRecord
  
  validates :price, numericality: {only_decimal: true}
  validates :name, length: {minimum: 2}
  validates :name, presence: true
  validates :name, uniqueness: true

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
