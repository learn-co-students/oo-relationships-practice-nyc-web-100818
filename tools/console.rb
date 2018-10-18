require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Actor.new("Alice")
a2 = Actor.new("Pete")
a3 = Actor.new("Hector")

m1 = Movie.new("Apocolypse")

s1 = Show.new("Friends")

c1 = Character.new("Dr. Jones", a1, m1, nil)

allchars = Character.all

test1 = m1.characters

test2 = m1.actors

Pry.start
