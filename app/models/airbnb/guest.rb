class Guest
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select{|trip| trip.guest == self}
  end

  def listings
    trips.map{|trip| trip.listing}
  end

  def trip_count
    trips.count
  end

  def self.pro_traveler
    # all guests who have made over one trip
    # Trips.all.select array of trips with guests with a trip_count > 1
    # .map to an array of guests; .uniq return only unique results
    Trip.all.select{|trip| trip.guest.trip_count > 1}.map{|trip| trip.guest}.uniq
  end

  # returns an array
  def self.find_by_name(name)
    self.all.select{|guest| guest.name == name}
  end

end
