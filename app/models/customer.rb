require_relative "review"
class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    add_review = Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    total = 0
    num_reviews.each do |num|
    
    
  end

  def restaurants
    num_reviews.map {|review| review.restaurant}
    restaurants.uniq
  end


  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.find {|customer| customer.name == full_name}
  end

  def self.find_all_by_first_name
    self.all.select {|customer| customer.first_name == first_name}
  end

  def self.all_names
    @@all.name 
  end



end
