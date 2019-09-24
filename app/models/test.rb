require_relative 'review'
require_relative 'restaurant'
require_relative 'customer'

pizza = Restaurant.new("Pizza")
sushi = Restaurant.new("Sushi")
burger = Restaurant.new("Burger")

oscar = Customer.new("Oscar", "Song")
brad = Customer.new("Brad", "Kim")
tom = Customer.new("Tom", "Cruz")

oscar.add_review(pizza, "sux", 2)
oscar.add_review(sushi, "goooood", 8)
oscar.add_review(burger, "meh", 5)
brad.add_review(pizza, "Hellz yeaaaaa", 8)
brad.add_review(sushi, "grossss", 2)
brad.add_review(burger, "hellz double yeaaaah", 10)
tom.add_review(pizza, "ight", 5)
tom.add_review(sushi, "ight", 5)
tom.add_review(burger, "ight", 5)

puts "oscar.num_review: shd be 3"
puts oscar.num_reviews
puts

puts "pizza.average_star_rating: shd be 5"
puts pizza.average_star_rating
puts

puts "pizza.longest_review: shd be 'hellz double yeaaaah'"
puts pizza.longest_review
puts

puts "Customer CLASS METHODS TESTINGS"
puts Customer.find_by_name("Oscar Song")
puts Customer.find_all_by_first_name("Tom")
puts Customer.all_names
