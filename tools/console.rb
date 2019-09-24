require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# binding.pry
# 0 #leave this here to ensure binding.pry isn't the last line

joelle = Customer.new("Joelle", "Helm")
ashley = Customer.new("Ashley", "Helm")
george = Customer.new("George", "Wilkins")
joelle = Customer.new("Joelle", "Last")


greatsouthern = Restaurant.new("Great Southern")
rocknroll = Restaurant.new("Rock n Roll Sushi")

rev1 = george.add_review(rocknroll, "Not as good as first time", 3)
george.add_review(rocknroll, "Awesome sushi.", 5)
joelle.add_review(rocknroll, "Best spicy crawfish sushi!", 5)
joelle.add_review(greatsouthern, "Great breakfast.", 5)


puts "============ALL CUSTOMERS========================="
puts Customer.all
puts "================ALL RESTAURANTS================="
puts Restaurant.all
puts "========================ALL REVIEWS======================"
puts Review.all
puts "=================Number of reviews for joelle=================="
puts joelle.num_reviews
puts "=========Unique array of all restraunts reviewed by joelle==========="
# using map for the restraunts method doesn't work because 2 nil values are added
puts joelle.restaurants
puts "===unique array of all customers who have reviewed rocknrollsushi========"
puts rocknroll.customers
puts "====a way to check if the above returned the correct customers===== "
puts george
puts joelle
puts "================all reviews for rocknrollsushi================"
puts rocknroll.reviews
puts "=============rocknrollsushi average rating======================="
puts rocknroll.average_star_rating
puts "==============longest review of rocknrollsushi==============="
puts rocknroll.longest_review
puts "===================All customer names=================="
puts Customer.all_names
puts "================find first customer that matches full name string==========="
puts Customer.find_by_name("Joelle Helm")
puts "===========find all customers with the first name joelle=========="
puts Customer.find_all_by_first_name("Joelle")
puts "================return first restaurant that matches the string==========="
puts Restaurant.find_by_name("Rock n Roll Sushi")
puts "========Tests for review methods=========="
puts rev1.customer.first_name
puts rev1.restaurant.name
puts rev1.rating
puts rev1.content