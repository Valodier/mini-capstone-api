class ChangePriceToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :price, :decimal, precision:15, scale: 2
  end
end
