class Addstatustocartedproducts < ActiveRecord::Migration[7.0]
  def change
    add_column :carted_products, :cart_status, :string
  end
end
