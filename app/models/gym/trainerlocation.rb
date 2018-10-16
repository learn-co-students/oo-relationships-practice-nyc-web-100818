class TrainerLocation
  attr_reader :trainer, :location

  @@all = []
  def initialize(args)
    @trainer = args[:trainer]
    @location = args[:location]
    @@all << self
  end

  def self.all
    @@all
  end

end
