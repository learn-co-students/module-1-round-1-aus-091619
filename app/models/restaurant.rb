class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
  end

  def customers
    x = Review.all.select{|review| review.restaurant == self}
    x.map{|review| review.customer}.uniq
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def average_star_rating
    x = self.reviews.map{|review| review.rating}
    x.sum/x.count
  end

  def longest_review
    x = self.reviews.map{|review| review.content}
    x.max { |a, b| a.length <=> b.length }
  end

  def self.find_by_name(name)
    Restaurant.all.find{|restaurant| restaurant.name == name}
  end

  def self.all
    @@all
  end

end
