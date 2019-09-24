require_relative 'review'

class Restaurant

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  # INSTANCE METHODS BELOW

  def reviews
    Review.all.select{ |review| review.restaurant == self}
  end

  def customers
    self.reviews.map{ |review| review.customer}
  end

  def average_star_rating
    avg_rating = 0
    self.reviews.each{ |review| avg_rating += review.rating}
    avg_rating / self.reviews.length
  end

  def longest_review
    self.reviews.max_by{ |review| review.content.length}
  end

  # CLASS METHODS BELOW

  def self.all
    @@all
  end

  def self.find_by_name (name)
    self.all.find{ |restaurant| restaurant.name == name}
  end

end
