class CartedProductsController < ApplicationController

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params["quantity"],
      cart_status: "carted"
    )

    if @carted_product.save
      render json: @carted_product
    else
      render json: {errors: carted_product.errors.full_messages},
      status: 422
    end
  end

  def index
    @carted_products = current_user.carted_products.where(cart_status: "carted")
    #carted_products = CartedProduct.find_by(current_user)
    render :index
  end

  def destroy
    carted_product = current_user.carted_products.find_by(id:params[:id], cart_status: "carted")
    carted_product.cart_status= "removed"
    carted_product.save
    render json: {status: "Carted product successfully removed!"}
  end

end
