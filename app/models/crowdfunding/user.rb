class User
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def create_project(project_name, category, goal)
    Project.new(name: project_name, user: self, category: category, goal: goal)
  end

  def back_project(project, amount)
    Pledge.new(project: project, user: self, amount: amount)
  end

  def pledges
    Pledge.all.select{|pledge| pledge.user == self}
  end

  def self.highest_pledge
    highest_pledge = Pledge.all.max_by{|pledge| pledge.amount}
    highest_pledge.user
  end

  def self.multi_pledger
    self.all.select{|user| user.pledges.count > 1}
  end

  def self.project_creator
    Project.all.map{|project| project.user}.uniq
  end
end
