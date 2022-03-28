class CartedProductsController < ApplicationController

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      status: params["status"],
      order_id: params["order_id"]
    )

    if @carted_product.save
      render json: @carted_product
    else
      render json: {errors: carted_product.errors.full_messages},
      status: 422
    end
  end

  def index
    @carted_products = current_user.carted_products.where(status:"carted")
    #carted_products = CartedProduct.find_by(current_user)
    render json: @carted_products
  end

  def destroy
    carted_product = current_user.carted_products.find(params[:id], status: "carted")
    carted_product.status = "removed"
    carted_product.save
    render json: {status: "Carted product successfully removed!"}
  end

end
