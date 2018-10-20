require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Guest.new("Bob")
g2 = Guest.new("Jim")
g3 = Guest.new("Andrew")

l1 = Listing.new("Listing 1","New York")
l2 = Listing.new("Listing 2","Boston")
l3 = Listing.new("Listing 3","LA")
l4 = Listing.new("Listing 4","LA")


t1 = Trip.new(l1,g1)
t2 = Trip.new(l1,g2)
t3 = Trip.new(l2,g3)
t4 = Trip.new(l3,g3)
t5 = Trip.new(l3,g3)
t6 = Trip.new(l3,g3)
t6 = Trip.new(l3,g1)



Pry.start
