class Project
  attr_reader :name, :user, :category, :goal

  @@all = []
  def initialize(args)
    @name = args[:name]
    @user = args[:user]
    @category = args[:category]
    @goal = args[:goal]
    @@all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select{|pledge| pledge.project == self}
  end

  def backers
    self.pledges.map{|pledge| pledge.user}.uniq
  end

  def amount_pledged
    self.pledges.map{|pledge| pledge.amount}.reduce(:+) || 0 # return 0 if no pledges
  end

  def self.no_pledges
    all_backed_projects = Pledge.all.map{|pledge| pledge.project}
    self.all.select{|project|
      !all_backed_projects.include?(project) # select result if project is not in all_backed_projects
    }
  end

  def self.above_goal
    self.all.select{|project| project.amount_pledged >= project.goal}
  end

  def self.most_backers
    self.all.max_by{|project| project.backers.count}
  end
end
