class SuppliersController < ApplicationController

  def index
    @supplier = Supplier.all
    render :index
  end

  def show
    supplier_id = params[:id]
    @supplier = Supplier.find_by(id: supplier_id)
    render :show
  end

  def create
    @supplier = Supplier.new(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"]
    )
    if @supplier.save
      render :show
    else
      render :json {Message: @suppliers.errors.full_messages},
      status: 422
    end    
  end

  def update
    supplier_id = params [:id]
    @supplier = Supplier.find_by(id: supplier:id)

    @supplier.name = params["name"] || @supplier.name
    @supplier.email = params["email"] || @supplier.email
    @supplier.phone_number = params["phone_number"] || @supplier.phone_number

    if @supplier.save
      render :show      
    else
      render :json {message: @supplier.erros.full_messages},
      status: 422
    end
    
  end

  def destroy
    supplier_id = params[:id]
    supplier = Supplier.find_by[id: supplier_id]
    supplier.destroy
    render :json {message: "WHERE DID THEY GO?!"}
  end

end
