require_relative 'review'
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
    Review.new(restaurant, content, rating, self)
  end

  def num_reviews
   reviews = Review.all.map { |review| review.customer == self }
   reviews.length
  end

  def restaurants
    Review.all.select do |rev|
      if rev.customer == self
        rev.restaurant
      end
    end
  end

  def self.find_by_name(name)
    Customer.all.select do |customer|
      if customer.full_name == name
        customer
      end
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      if customer.first_name == name
        customer
      end
    end
  end

  def self.all_names
    all_full_names = []
    Customer.all.each do |customer|
      all_full_names << customer.full_name
    end
    all_full_names
  end

end
