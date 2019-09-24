class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def customers
    # Returns a unique list of all customers who have reviewed a particular restaurant.
    self.reviews.map{|review| review.customer}.uniq
  end
  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select{|review| review.restaurant == self}
  end
  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews
    ratings = self.reviews.map{|review| review.rating}
    num_reviews = self.reviews.count
    ratings.sum*1.0/num_reviews
  end
  def longest_review
    # returns the longest review content for a given restaurant
    self.reviews.max{|review1, review2| review1.content.length <=> review2.content.length}
  end
  def self.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches
    self.all.find{|restaurant| restaurant.name == name}
  end

end
