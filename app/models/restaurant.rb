class Restaurant
  attr_reader :rest_name

# CLASS METHODS

  @@all = []

  def initialize(rest_name)
    @rest_name = rest_name
    @@all << self
  end
  
  def self.all
    @@all
  end



# INSTANCE METHODS


end
