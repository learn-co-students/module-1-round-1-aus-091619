require_relative 'review'

class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  # INSTANCE METHODS

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  def reviews
    Review.all.select{ |review| review.customer == self}
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    self.reviews.map { |review| review.restaurant}
  end

  # CLASS METHODS BELOW

  def self.all
    @@all
  end

  def self.find_by_name (name)
    self.all.find{ |customer| customer.full_name == name}
  end

  def self.find_all_by_first_name (first_name)
    self.all.select{ |customer| customer.first_name == first_name}
  end

  def self.all_names
    self.all.map{ |customer| customer.full_name}
  end

end
