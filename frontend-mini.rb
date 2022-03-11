require "http"

system "clear"

puts "Welcome to the Amazon Breaker"
index = HTTP.get("http://localhost:3000/products")

pp index.parse(:json)

puts "Please input desired item id:"
id = gets.chomp

show = HTTP.get("http://localhost:3000/products/#{id}")

pp show.parse(:json)


