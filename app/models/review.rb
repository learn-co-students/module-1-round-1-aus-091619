class Review
    @@all = []
    attr_reader :customer, :restaurant, :content, :rating

    def initialize(customer, restaurant, content, rating)
       @customer = customer
       @restaurant = restaurant
       @content = content
       if rating > 0 && rating <=5 && rating.kind_of?(Integer)
        @rating = rating
       end
        @@all << self
    end

    def self.all
        @@all
    end

#     review#customer
# returns the customer object for that given review
# Once a review is created, I should not be able to change the author
# Review#restaurant
# returns the restaurant object for that given review
# Once a review is created, I should not be able to change the restaurant
# Review#rating
# returns the star rating for a restaurant. This should be an integer from 1-5
# Review#content
# returns the review content, as a string, for a particular review
  
end

