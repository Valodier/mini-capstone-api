Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/product", controller:"products", action:"first_product"
  get "/products" => "products#all_products"
end
