require "http"

system "clear"

puts "Welcome to the Amazon Breaker"

response = HTTP.get("http://localhost:3000/product")

pp response.parse(:json)

