class Ingredients

  attr_accessor :name,:dessert

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(ingredient)

  end

end #END OF INGREDIENTS CLASS
