class ProductsController < ApplicationController
  def all_products
    render json: Product.all.as_json
  end

  def first_product
    render json: Product.first.as_json
  end

  def any_product_from_segment
    input_name = params[:thing]
    render json: Product.find_by(name: input_name)
  end
end
