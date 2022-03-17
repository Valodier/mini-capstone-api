# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# product1 = Product.new ({name: "LazerDizk", price:5, image_url:"", description:"An object used by our forefathers to watch media"})
# product1.save

# product2 = Product.new ({name: "Cannon", price:2000000, image_url:"", description:"A bear arm we have a right to"})
# product2.save

# product3 = Product.new ({name: "Three tires", price:20000, image_url:"", description:"Enough tires to force you to buy more"})
# product3.save

# product4 = Product.new ({name: "Monopoly", price:60, image_url:"", description:"An educational game about how the rich always win"})
# product4.save

supplier1 = Supplier.new ({name: "Facebook", email: "TheZuck@aol", phone_number: "111-1111"})
supplier1.save
supplier2 = Supplier.new ({name: "Waste Management", email: "Garbage@trash", phone_number: "333-3333"})
supplier2.save
supplier3 = Supplier.new ({name: "America", email: "Oligarchy@Rich", phone_number: "000-0000"})
supplier3.save
