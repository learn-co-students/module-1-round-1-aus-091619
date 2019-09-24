class Review
    attr_reader :customer, :restaruant, :rating, :content
  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all <<self
  end



end

