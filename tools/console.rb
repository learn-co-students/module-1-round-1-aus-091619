require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
sally1 = Customer.new("Sally", "Banks")
sally2 = Customer.new("Sally", "Smith")
sally3 = Customer.new("Sally", "Cook")
tim = Customer.new("Tim", "Rogers")
arby = Restaurant.new("Arby's")
mcd = Restaurant.new("McDonalds")
kfc = Restaurant.new("KFC")
sally1.add_review(arby, "good", 4)
sally1.add_review(mcd, "the bestest ever", 5)
sally1.add_review(kfc, "OMG the chicken", 5)
sally2.add_review(mcd, "the bestest ever", 4)
sally3.add_review(mcd, "the bestest ever", 5)
sally1.add_review(mcd, "this time was bad, so i have to tell you about it", 4)
# Basic methods
Customer.all

# should return all of the customer instances
Restaurant.all
# returns an array of all restaurants
Review.all
# returns all of the reviews
# Associations and Aggregate Methods
# Customer
# Customer#add_review(restaurant, content, rating)
# given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# Customer#num_reviews
# Returns the total number of reviews that a customer has authored
sally1.num_reviews
# Customer#restaurants
# Returns a unique array of all restaurants a customer has reviewed
sally1.restaurants
# Restaurant
# Restaurant#customers
# Returns a unique list of all customers who have reviewed a particular restaurant.
mcd.customers
# Restaurant#reviews
# returns an array of all reviews for that restaurant
mcd.reviews
# Restaurant#average_star_rating
# returns the average star rating for a restaurant based on its reviews
mcd.average_star_rating
# Restaurant#longest_review
# returns the longest review content for a given restaurant
mcd.longest_review
# Class Methods and Properties
# Build the following methods on the Customer class
# Customer.find_by_name(name)
# given a string of a full name, returns the first customer whose full name matches
Customer.find_by_name("Sally Banks")
# Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name
Customer.find_all_by_first_name("Sally")
# Customer.all_names
# should return an array of all of the customer full names
Customer.all_names
# Build out the following method on the Restaurant class
# Restaurant.find_by_name(name)
Restaurant.find_by_name("McDonalds")
# given a string of restaurant name, returns the first restaurant that matches
# Build out the following methods on the Review class
# Review#customer

# returns the customer object for that given review
# Once a review is created, I should not be able to change the author
# Review#restaurant
# returns the restaurant object for that given review
# Once a review is created, I should not be able to change the restaurant
# Review#rating
# returns the star rating for a restaurant. This should be an integer from 1-5
# Review#content
# returns the review content, as a string, for a particular review


binding.pry
0 #leave this here to ensure binding.pry isn't the last line