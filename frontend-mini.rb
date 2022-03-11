require "http"

system "clear"

puts "Welcome to the Amazon Breaker"
puts "Please input desired item id:"
id = gets.chomp

show = HTTP.get("http://localhost:3000/products/#{id}")

pp show.parse(:json)


