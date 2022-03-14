require "http"

system "clear"

puts "Welcome to the Amazon Breaker"

# puts "What would you like to do? Type Browse, and Item ID, Update, or Create"
# input = gets.chomp



index = HTTP.get("http://localhost:3000/products")

pp index.parse(:json)

puts "Please input desired item id:"
id = gets.chomp

show = HTTP.get("http://localhost:3000/products/#{id}")

pp show.parse(:json)

# puts "Please type what Item ID you would like to edit:"
# id = gets.chomp 

# puts "What would you like to edit?"
# puts "Name, Price, Image, Description, or All"
# input = gets.chomp

#hard way would be to if all inputs and change through if statements, but I would like to do it concise way, which would run through and only change selected via or gates

# if input.downcase == "name"
#   puts "What would you like to change it to?"
#   change_to = gets.chomp

#   product.name == 
# end


create = HTTP.post("http://localhost:3000/products/#{id}")

delete = HTTP.delete("http://localhost:3000/products/10")


