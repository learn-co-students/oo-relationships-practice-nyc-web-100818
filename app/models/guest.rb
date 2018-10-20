class Guest

  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    self.trips.map do |trip|
      trip.listing
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def trip_count
    self.trips.size
  end


  #iterates through Guest.all and select instances with trip_count > 1
  def self.pro_traveller
    Guest.all.select do |guest|
      guest.trip_count > 1
    end
  end

  def self.find_all_by_name(name)
    Guest.all.select do |guest|
      guest.name == name
    end
  end

end # END OF GUEST CLASS
