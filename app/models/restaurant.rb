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
    Review.all.select { |rev| rev.restaurant == self }.map { |rev| rev.customer }.uniq
  end

  def reviews
    Review.all.select { |rev| rev.restaurant == self }
  end

  def average_star_rating
    sum = 0
    reviews.map { |rev| sum += rev.rating }
    avg = sum/reviews.length
  end 

  def longest_review
    reviews.max_by { |rev| rev.content.length}
  end

  def self.find_by_name(name)
    Restaurant.all.find { |restaurant| restaurant.name == name }
  end

end
