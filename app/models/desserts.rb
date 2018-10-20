class Desserts

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def ingredients

  end

  def bakery

  end

  def calories

  end

  def self.all
    @@all
  end

end # END OF DESSERTS CLASS
