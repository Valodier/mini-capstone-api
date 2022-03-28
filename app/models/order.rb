class Order < ApplicationRecord
  belongs_to :user
  #belongs_to reflects the foreing key (user_id) column within the schema for this model
  #Order schema has a #user_id# and a #product_id# column, thus they BELONG TO those things

  has_many :carted_products
  #^^^ Has to come before the next line, tells where to find keys
  #reflects the belongs_to in carted_products
  has_many :products, through: :carted_products
  #^^^ Identifies how the foreign keys are associated, via the join table

end

#Decomposing the orders process
# User has to be able to save the item, like putting it in your cart but we aren't doing a cart yet so next step

# Create an instance of order with user_id and product_id, and quantity
    # order = Order.new(attributes)


# Routes need to be added? For actually GETting the information, to show what you have saved? Isnt this a cart?
# Routes for POSTing the information for what you want, and the quantity of what you want

#JB view for order, and a reflection of the belongs_to

#authentication

# Login --> POST (quantity) --> GET/show(totals = quantity*tax), 