class Ride
  attr_reader :passenger, :driver
  attr_accessor :distance

  @@all = []

  def initialize(driver, passenger)
    @driver = driver
    @passenger = passenger
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    total_distance = self.all.map{|ride| ride.distance}.reduce(:+)
    total_rides = self.all.count
    total_distance.to_f / total_rides
  end

end
