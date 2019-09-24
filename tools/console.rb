require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
ledos = Restaurant.new("ledos")
vincent = Customer.new("vincent", "marks")
one = Review.new(vincent, ledos, "very good", 4)
two = Review.new(vincent, ledos, "very goooooooooood", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
