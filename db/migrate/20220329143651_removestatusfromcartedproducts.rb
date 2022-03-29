class Removestatusfromcartedproducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :carted_products, :status, :string
  end
end
