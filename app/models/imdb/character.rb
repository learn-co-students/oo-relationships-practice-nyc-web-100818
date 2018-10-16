class Character
  attr_reader :name, :actor, :media

  @@all = []

  def initialize(params)
    @name = params[:name]
    @actor = params[:actor]
    @media = params[:media]
    @@all << self
  end

  def self.all
    @@all
  end

  # should return which character of film/television appears in the most films or tv shows
  # assuming this is meant to be an instance method instead of class method since it's looking at all...
  def self.most_appearances
    # group_by character name
    # max_by character count
    self.all.group_by{|character| c.name}.max_by{|name,characters| characters.count}[0]
  end

end
