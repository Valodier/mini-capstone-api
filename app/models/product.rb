class Product < ApplicationRecord

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
