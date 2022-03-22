class OrdersController < ApplicationController
  
  def index
    orders = current_user.orders
    render json: orders
  end


  def show
    order = current_user.orders.find_by(id: params["id"])
    render json: order
  end


  def create
    product = Product.find_by(id:params[:product_id])

    calculated_subtotal = product.price * params[:quantity]
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      #product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )

    if @order.save
      render :show
    else
      render json: {errors: @order.errors.full_messages},
      status: 422
    end
  end

end
