class Media
  attr_reader :title, :year

  @@all = []

  def initialize(title, year)
    @title = title
    @year = year
    @@all << self
  end

  def self.all
    @@all
  end

  def cast_actor(actor, character)
    Character.new(name: character, actor: actor, media: self)
  end

  def characters
    Character.all.select{|character| character.media == self}
  end

  def actors
    characters.map{|character| character.actor}
  end

  def actor_count
    actors.count
  end

  def self.most_actors
    self.all.sort_by{|media| media.actor_count}.reverse.first
  end
end
