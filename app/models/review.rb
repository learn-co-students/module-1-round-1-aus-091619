require_relative "customer"

class Review
    attr_reader :restaurant, :content, :customer

# CLASS METHODS
@@all = []

def initialize(customer, restaurant,content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating

    @@all << customer.add_review
end

def self.all
    @@all
end





# INSTANCE METHODS


  
end

