class OrdersController < ApplicationController
  
  def create
    order = Order.new(
      user_id: params["user_id"],
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: params["subtotal"],
      tax: params["tax"],
      totals: params["totals"]
    )

    if order.save
      
    else
      render json: {error: @orders.errors.full_messages},
      status: 422
    end
  end

end
