class Character

  attr_accessor :name, :actors, :movies, :shows
  @@all = []

  def initialize(name, actors, movies, shows)
    @name = name
    @actors = actors 
    @movies = movies
    @shows = shows
    @@all << self
  end

  def self.all
    @@all
  end

end
