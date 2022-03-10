class ProductsController < ApplicationController
  def all_products
    render json: Product.all.as_json
  end

  def first_product
    render json: Product.first.as_json
  end

  def any_product_from_segment
    input_id = params["id"]
    product = Product.find_by(id: input_id)
    render json: product.as_json
  end
end
