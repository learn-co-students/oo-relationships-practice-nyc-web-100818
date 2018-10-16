require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# # Airbnb seed data
# # create new listings
# l1 = Listing.new("New York")
# l2 = Listing.new("Brooklyn")
# l3 = Listing.new("Queens")
# l4 = Listing.new("Bronx")
#
# # create new guests
# g1 = Guest.new("Ian")
# g2 = Guest.new("Lydia")
# g3 = Guest.new("Mike")
# g4 = Guest.new("Reuben")
#
# # create trips from listing+guest
# t1 = Trip.new(l1,g1)
# t2 = Trip.new(l2,g2)
# t3 = Trip.new(l3,g3)
# t4 = Trip.new(l4,g4)
# t5 = Trip.new(l1,g2)
# t6 = Trip.new(l2,g1)
# t7 = Trip.new(l3,g1)
# t7 = Trip.new(l3,g3)

# # Bakery seed data
# # Create a new bakery
# b1 = Bakery.new("Ian's Cakehouse")
#
# # Create desserts for that bakery
# d1 = Dessert.new("Apple Cake", b1)
# d2 = Dessert.new("Apple Pie", b1)
# d3 = Dessert.new("Apple Donut", b1)
#
# # Create ingredients for each dessert
# i1 = Ingredient.new("Apple", 10, d1)
# i2 = Ingredient.new("Flour", 200, d1)
# i3 = Ingredient.new("Sugar", 400, d1)
# i4 = Ingredient.new("Eggs", 300, d1)
# i5 = Ingredient.new("Gala Apples", 10, d2)
# i6 = Ingredient.new("Butter", 1000, d2)
# i7 = Ingredient.new("Flour", 200, d2)
# i8 = Ingredient.new("Apple", 10, d3)
# i9 = Ingredient.new("Cinnamon", 2, d3)
# i10 = Ingredient.new("Sugar", 400, d3)
# i11 = Ingredient.new("Oil", 2000, d3)

# # Lyft seed data
# # Create drivers
# d1 = Driver.new("Liza")
# d2 = Driver.new("Loren")
# d3 = Driver.new("Cara")
# d4 = Driver.new("Duane")
#
# # Create passengers
# p1 = Passenger.new("Ian")
# p2 = Passenger.new("Reuben")
# p3 = Passenger.new("Mike")
# p4 = Passenger.new("Natalie")
#
# # Create rides from drivers and passengers
# r1 = Ride.new(d1,p1)
# r1.distance = 10
#
# r2 = Ride.new(d1,p2)
# r2.distance = 100
#
# r3 = Ride.new(d1,p3)
# r3.distance = 20
#
# r4 = Ride.new(d2,p4)
# r4.distance = 10
#
# r5 = Ride.new(d2,p1)
# r5.distance = 100
#
# r6 = Ride.new(d3,p1)
# r6.distance = 1000
#
# r7 = Ride.new(d4,p1)
# r7.distance = 100
#
# r8 = Ride.new(d4,p1)
# r8.distance = 10
#
# r9 = Ride.new(d4,p4)
# r9.distance = 20

# # IMDb seed data
# # Create movies
# f1 = Movie.new("A Simple Favor", 2018)
# f2 = Movie.new("Mom and Dad", 2017)
# f3 = Movie.new("The Wicker Man", 2006)
# f4 = Movie.new("Batman", 1989)
#
# # Create shows
# s1 = Show.new("Forever", 2018)
# s2 = Show.new("Batman", 1966)
#
# # Create actors
# blake = Actor.new("Blake Lively")
# anna = Actor.new("Anna Kendrick")
# nic = Actor.new("Nic Cage")
# selma = Actor.new("Selma Blair")
# ellen = Actor.new("Ellen Burstyn")
# frances = Actor.new("Frances Conroy")
# maya = Actor.new("Maya Rudolph")
# fred = Actor.new("Fred Armisen")
# michael = Actor.new("Michael Keaton")
# adam = Actor.new("Adam West")
#
# # Assign actors to shows/movies
# f1.cast_actor(blake, "Emily Nelson")
# f1.cast_actor(anna, "Stephanie Smothers")
#
# f2.cast_actor(nic, "Brent")
# f2.cast_actor(selma, "Kendall")
#
# f3.cast_actor(nic, "Edward Malus")
# f3.cast_actor(ellen, "Sister SummerIsle")
# f3.cast_actor(frances, "Dr. T.H. Moss")
#
# f4.cast_actor(michael, "Batman")
#
# s1.cast_actor(fred, "Oscar")
# s1.cast_actor(maya, "June")
#
# s2.cast_actor(adam, "Batman")

# # Crowdfunding seed data
# # User
# u1 = User.new("Ian")
# u2 = User.new("Catherine")
# u3 = User.new("Rose")
#
# # Project
# p1 = u1.create_project("A New Pair of Shoes", "Self-Interest", 100)
# p2 = u2.create_project("My First Bakery", "Cooking", 500000)
# p3 = u1.create_project("Hockey Tournament", "Sports", 1000)
# p4 = u1.create_project("Soccer Tournament", "Sports", 5000)
#
# # Pledges
# u2.back_project(p1, 20)
# u1.back_project(p1, 90)
#
# u1.back_project(p2, 1000)
# u3.back_project(p2, 10000)
# u3.back_project(p2, 1000)
# u2.back_project(p2, 1000)
#
# u1.back_project(p3, 500)
# u2.back_project(p3, 500)

# Gym seed data
# Trainers
t1 = Trainer.new("Ian")
t2 = Trainer.new("Catherine")
t3 = Trainer.new("Rose")

# Locations
l1 = Location.new("New York")
l1.hire_trainer(t1)

l2 = Location.new("Brooklyn")
l2.hire_trainer(t1)

l3 = Location.new("Queens")
l3.hire_trainer(t1)

l4 = Location.new("Suttons Bay")
l4.hire_trainer(t3)

l5 = Location.new("Traverse City")
l5.hire_trainer(t3)

l6 = Location.new("San Francisco")
l6.hire_trainer(t2)

# Clients
c1 = Client.new("Eric")
c1.assign_trainer(t1)

c2 = Client.new("Annie")
c2.assign_trainer(t2)

c3 = Client.new("Jacob")
c3.assign_trainer(t3)

c4 = Client.new("Nick")
c4.assign_trainer(t3)

c5 = Client.new("Ken")
c5.assign_trainer(t3)


Pry.start
