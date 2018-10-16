class Location
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def hire_trainer(trainer)
    TrainerLocation.new(trainer: trainer, location: self)
  end

  def trainer_locations
    TrainerLocation.all.select{|tl| tl.location == self}
  end

  def trainers
    self.trainer_locations.map{|tl| tl.trainer}
  end

  def clients
    clients = []
    self.trainers.each do |trainer|
      clients += trainer.clients
    end
    clients
  end

  def self.least_clients
    self.all.min_by {|location| location.clients.count}
  end

end
