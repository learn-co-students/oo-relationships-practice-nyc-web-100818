class Actor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def characters
    Character.all.select{|character| character.actor == self}
  end

  def movies
    characters.map{|character| character.movie}
  end

  def shows
    characters.map{|character| characher.show}
  end

  def character_count
    characters.count
  end

  def self.most_characters
    # should return which actor has the most different characters played. (probably meryl streep)
    self.all.max_by{|actor| actor.character_count}
  end

end
