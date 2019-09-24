class Restaurant
  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
   customer_review = Review.all.map{|reviews| reviews.restaruant == self}
   customer_review.map{|reviews| reviews.customer}.uniq
# Returns a unique list of all customers who have reviewed a particular 
# restaurant.
  end
def reviews
  Review.all.map{|reviews| reviews.restauant == self}.uniq
# returns an array of all reviews for that restaurant
end
def average_star_rating
  rating_array = Review.all.map{|reviews| reviews.restaruant == self}
  rating_array.map{|reviews| reviews.rating}.average
# returns the average star rating for a restaurant 
# based on its reviews
end
def longest_review
  self.reviews.max{|review1, review2| review1.content.count <=> review2.content.count}
# returns the longest review content for a given restaurant
end

def self.find_by_name(name)
  self.all.map{|r| r.restaurant == name}.first
# given a string of restaurant name, returns the first 
# restaurant that matches

end
end
