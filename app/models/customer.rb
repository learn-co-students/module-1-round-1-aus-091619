require_relative "restaurant"
require_relative "review"

class Customer
  attr_reader :first_name, :last_name, :restaurant, :content, :rating

# CLASS METHODS
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

# INSTANCE METHODS 

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    all_reviews = Review.all

  end


end
