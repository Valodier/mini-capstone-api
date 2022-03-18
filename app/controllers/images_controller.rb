class ImagesController < ApplicationController

  def index
    @images = Image.all
    render :index
    # render json: Image.all.as_json
  end
  
  def create
    @image = Image.new(
      url: params["url"],
      product_id: params["product_id"]
    )
    if @image.save
      render :show
    else
      render json: {errors: @image.errors.full_messages},
      status: 422
    end
  end

  def update
    image_id = params[:id]
    @image = Image.find_by(id:image_id)
    
    @image.url = params["url"] || @image.url
    @image.product_id = params["product_id"] || @image.product_url

    if @image.save
      render :show
    else
      render json: {errors: @image.errors.full_messages},
      status: 422
    end
  end
end
