class Review
  
    attr_reader :restaurant, :content, :rating, :customer

    @@all = []

    def initialize (restaurant, content, rating, customer)
        @restaurant = restaurant
        @content = content
        @rating = rating_minmax (rating)
        @customer = customer

        @@all << self
    end

    def rating_minmax (rating)
        if rating > 5
            5
        elsif rating < 0
            0
        else
            rating
        end
    end

    # CLASS METHODS BELOW

    def self.all
        @@all
    end



end

