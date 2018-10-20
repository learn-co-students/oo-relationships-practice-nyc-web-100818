class Bakery

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def ingredients

  end

  def desserts

  end

  def average_calories

  end

  def shopping_list

  end

  def self.all
    @@all
  end
end # End of Bakery Class
