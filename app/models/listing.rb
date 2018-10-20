class Listing
  attr_accessor :name,:city

  @@all =[]

  def initialize(name,city)
    @name = name
    @city = city
    @@all << self
  end

  def guests
    self.trips.map do |trip|
      trip.guest
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    self.trips.size
  end


  def self.all
    @@all
  end

  def self.find_all_by_city (city)
    Listing.all.select do |listing|
      listing.city == city
    end
  end

  def self.most_popular
    Listing.all.max_by do |listing|
      listing.trip_count
    end
  end

end # END OF LISTING CLASS
