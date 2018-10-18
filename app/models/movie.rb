class Movie
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def characters
     Character.all.select do |c|
      c.movies == self
    end
  end

  def actors
    characters.map {|c| c.actors}
  end

end
