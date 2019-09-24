class Customer
  attr_reader :first_name, :last_name
@@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
# given a restaurant object, some review content (as a string), 
# and a star rating (as an integer), creates a new review 
# and associates it with that customer and restaurant.
  end

  def num_reviews
    Review.all.map{|reviews| reviews.customer == self}.count
# Returns the total number of reviews that a customer has authored
  end

def restaurants
  arr = Review.all.map{|reviews| reviews.customer == self}
  arr.map{|reviews| reviews.restaurants}.uniq
# Returns a unique array of all restaurants a customer has reviewed
end

self.find_by_name(name)
  self.all_names.map{|fn| fn.full_name == name }.first
# given a string of a full name, returns the first customer whose full 
# name matches

end

def self.find_all_by_first_name(name)
  self.all.map{|first| first.first_name == name}
# given a string of a first name, returns an array 
# containing all customers with that first name
end

self.all_names
  self.full_name
# should return an array of all of the customer full names
end
end
