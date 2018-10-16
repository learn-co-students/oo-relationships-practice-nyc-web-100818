class Pledge
  attr_reader :project, :user, :amount

  @@all = []
  def initialize(args)
    @project = args[:project]
    @user = args[:user]
    @amount = args[:amount]
    @@all << self
  end

  def self.all
    @@all
  end

end
