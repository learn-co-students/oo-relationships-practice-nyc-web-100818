class Driver
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def passengers
    rides.map{|ride| ride.passenger}
  end

  def rides
    Ride.all.select{|ride| ride.driver == self}
  end

  def self.mileage_cap(distance)
    Ride.all.select{|ride| ride.driver.total_distance > distance}.map{|ride| ride.driver}.uniq
  end

  def total_distance
    rides.map{|ride| ride.distance}.reduce(:+)
  end

end
