require_relative "customer.rb"
require_relative "restaurant.rb"
require_relative "review.rb"

# INIT OF INSTANCES
cust1 = Customer.new("james", "patterson")
cust2 = Customer.new("rick", "mahomes")
cust3 = Customer.new("todd", "pearce")
cust4 = Customer.new("danny", "mast")

rest1 = Restaurant.new("Trulucks")
rest2 = Restaurant.new("Sharky's")
rest3 = Restaurant.new("odd duck")


# TESTS

puts "test of all customers"
p Customer.all

# puts "test of all restaurants"
# p Restaurant.all

# puts "test of all reviews"
# p Review.all      # reviews not being shoveled in. come back and check

puts "customer add review test"
p cust1.add_review(rest1,"amazing", 5)
p cust1.add_review(rest2,"horrible", 1)
p cust2.add_review(rest1,"wonderful, but pricey", 4)
p cust3.add_review(rest2, "awful", 2)
p cust4.add_review(rest3, "its ok", 3)

# puts "num reviews by customer test"


