class Restaurant
  attr_reader :name, :customer
  @@all = []

  def initialize(name, customer)
    @name = name
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    Customer.all.select {|review| review.customer == self}
    customers.uniq
  end

  def reviews
    Review.all.select {|x| x.review == self}
  end

  def average_star_rating
    
  end

  def longest_review
    Review.max_by{|length| length.content}
  end

  def self.find_by_name(name)
    self.find {|restaurant| restaurant.name == self}
  end



end
