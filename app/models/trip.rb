#Trip is the SSOT, JOINT TABLE
# A Trip instance belongs to Guest and List

class Trip

  attr_accessor :listing,:guest
  @@all =[]

  def initialize(listing,guest)
    @listing = listing
    @guest = guest
    @@all << self
  end

  def self.all
    @@all
  end


end # END OF TRIP CLASS
