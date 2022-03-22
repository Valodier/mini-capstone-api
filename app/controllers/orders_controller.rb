class OrdersController < ApplicationController
  
  def index
    @orders = Order.all
    render :index
  end


  def show
    order_id = params["id"]
    @order = Order.find_by(id:order_id)
    render :show
  end


  def create
    @order = Order.new(
      user_id: params["user_id"],
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: params["subtotal"],
      tax: params["tax"],
      total: params["total"]
    )

    if @order.save
      render :show
    else
      render json: {errors: @order.errors.full_messages},
      status: 422
    end
  end

end
