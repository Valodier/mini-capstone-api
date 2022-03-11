class ProductsController < ApplicationController
  def index
    render json: Product.all.as_json
  end

  # def show
  #   render json: Product.first.as_json
  # end

  def show
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"]
    )
    product.save
    render json: product.as_json
    
  end
  
  # def any_product_from_segment
  #   product_id = params["id"]
  #   product = Product.find_by(id: product_id)
  #   render json: product.as_json
  # end

end
