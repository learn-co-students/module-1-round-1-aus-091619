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

  def add_review(restaurant,content,rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select{|review| review.customer == self}.count
  end

  def restaurants
    x = Review.all.select{|review| review.customer == self}
    x.map{|review| review.restaurant}.uniq
  end

  def self.find_by_name(name)
    Customer.all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.select{|customer| customer.first_name == name}
  end


  def self.all_names
    Customer.all.map{|customer| customer.full_name}
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
