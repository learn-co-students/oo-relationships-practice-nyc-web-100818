class Listing
  attr_reader :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    trips.map{|trip| trip.guest}
  end

  def trips
    Trip.all.select{|trip| trip.listing == self}
  end

  def trip_count
    trips.count
  end

  # returns one listing
  def self.find_by_city(city)
    self.all.find{|listing| listing.city == city}
  end

  def self.most_popular
    # sort trips by listing.trip in reverse; return the listing for the first element in sorted array
    Trip.all.sort_by{|trip| trip.listing.trip_count}.reverse[0].listing
    # another way...
    # group_by gives a hash with listings as key and an array of trips for each listing
    # max_by gives a 2 element array [listing, trips] with the listing with the most trips using trips.count
    # Trip.all.group_by{|trip| trip.listing}.max_by {|listing,trips| trips.count}[0]
  end

end
